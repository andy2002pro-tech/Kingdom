extends Node3D

const HOUSE_SCENE = preload("res://scenes/buildings/house.tscn")
const CITIZEN_SCRIPT = preload("res://scripts/models/citizen.gd")
const CITIZEN_VISUAL = preload("res://scripts/visuals/citizen_visual.gd")

const CITIZEN_COUNT = 12
const FOOD_POINT = Vector2(2.5, 0.0)

var rng := RandomNumberGenerator.new()
var citizens: Array = []
var citizen_visuals: Array[Node3D] = []

var home_positions: Array[Vector2] = [
	Vector2(-8, -8),
	Vector2(8, -8),
	Vector2(8, 8)
]


func _ready() -> void:
	rng.randomize()

	_create_paths()
	_create_trees()
	_create_houses()
	_create_citizens()


func _process(delta: float) -> void:
	_update_citizens(delta)


func _create_paths() -> void:
	var dirt := StandardMaterial3D.new()
	dirt.albedo_color = Color(0.55, 0.42, 0.27, 1)
	dirt.roughness = 1.0

	var horizontal := MeshInstance3D.new()
	var h_mesh := BoxMesh.new()
	h_mesh.size = Vector3(40, 0.08, 4)
	horizontal.mesh = h_mesh
	horizontal.material_override = dirt
	horizontal.position = Vector3(0, 0.04, 0)
	add_child(horizontal)

	var vertical := MeshInstance3D.new()
	var v_mesh := BoxMesh.new()
	v_mesh.size = Vector3(4, 0.08, 40)
	vertical.mesh = v_mesh
	vertical.material_override = dirt
	vertical.position = Vector3(0, 0.04, 0)
	add_child(vertical)


func _create_trees() -> void:
	var trunk_material := StandardMaterial3D.new()
	trunk_material.albedo_color = Color(0.35, 0.22, 0.12, 1)

	var leaves_material := StandardMaterial3D.new()
	leaves_material.albedo_color = Color(0.12, 0.38, 0.19, 1)

	var positions: Array[Vector3] = [
		Vector3(-12, 0, -12),
		Vector3(-9, 0, -12),
		Vector3(-6, 0, -12),
		Vector3(12, 0, -12),
		Vector3(15, 0, -9),
		Vector3(-13, 0, 12),
		Vector3(-10, 0, 15),
		Vector3(12, 0, 12),
		Vector3(15, 0, 12),
		Vector3(18, 0, 12)
	]

	for tree_position in positions:
		var trunk := MeshInstance3D.new()
		var trunk_mesh := CylinderMesh.new()
		trunk_mesh.top_radius = 0.16
		trunk_mesh.bottom_radius = 0.23
		trunk_mesh.height = 1.2
		trunk.mesh = trunk_mesh
		trunk.material_override = trunk_material
		trunk.position = tree_position + Vector3(0, 0.6, 0)
		add_child(trunk)

		var leaves := MeshInstance3D.new()
		var leaves_mesh := CylinderMesh.new()
		leaves_mesh.top_radius = 0.0
		leaves_mesh.bottom_radius = 0.85
		leaves_mesh.radial_segments = 6
		leaves_mesh.height = 1.7
		leaves.mesh = leaves_mesh
		leaves.material_override = leaves_material
		leaves.position = tree_position + Vector3(0, 1.9, 0)
		add_child(leaves)


func _create_houses() -> void:
	_place_house("FamilyHouse", Vector3(-8, 0, -8), PI)
	_place_house("WorkersHouse", Vector3(8, 0, -8), PI)
	_place_house("ReserveHouse", Vector3(8, 0, 8), PI / 2)


func _place_house(
	house_name: String,
	house_position: Vector3,
	house_rotation: float
) -> void:
	var house = HOUSE_SCENE.instantiate()
	house.name = house_name
	house.position = house_position
	house.rotation.y = house_rotation
	add_child(house)


func _create_citizens() -> void:
	citizens.clear()
	citizen_visuals.clear()

	for i in range(CITIZEN_COUNT):
		var person = CITIZEN_SCRIPT.new()
		person.initialize(i, rng)

		person.position = Vector2(
			rng.randf_range(-15.0, 15.0),
			rng.randf_range(-15.0, 15.0)
		)

		person.home_position = home_positions[i % home_positions.size()]
		person.target = _random_target()

		citizens.append(person)

		var visual = CITIZEN_VISUAL.new()
		visual.setup(person)

		visual.position = Vector3(
			person.position.x,
			0.0,
			person.position.y
		)

		add_child(visual)
		citizen_visuals.append(visual)


func _random_target() -> Vector2:
	return Vector2(
		rng.randf_range(-16.0, 16.0),
		rng.randf_range(-16.0, 16.0)
	)


func _update_citizens(delta: float) -> void:
	for i in range(citizens.size()):
		var person = citizens[i]
		var visual = citizen_visuals[i]

		# El hambre aumenta con el paso del tiempo.
		person.hunger = maxf(
			0.0,
			person.hunger - delta * 0.35
		)

		# Elegir actividad según las necesidades.
		if person.hunger < 35.0 and person.activity != "Comiendo":
			person.activity = "Comiendo"
			person.target = FOOD_POINT

		elif person.energy < 25.0 and person.activity != "Descansando":
			person.activity = "Descansando"
			person.target = person.home_position

		# Comer.
		if person.activity == "Comiendo":
			_move_citizen(person, delta)

			if person.position.distance_to(FOOD_POINT) < 0.8:
				person.hunger = minf(
					100.0,
					person.hunger + delta * 18.0
				)

				if person.hunger >= 98.0:
					person.activity = "Paseando"
					person.target = _random_target()

		# Descansar.
		elif person.activity == "Descansando":
			_move_citizen(person, delta)

			if person.position.distance_to(person.home_position) < 0.8:
				person.energy = minf(
					100.0,
					person.energy + delta * 14.0
				)

				if person.energy >= 98.0:
					person.activity = "Paseando"
					person.target = _random_target()

		# Pasear y desplazarse.
		else:
			person.energy = maxf(
				0.0,
				person.energy - delta * 0.15
			)

			_move_citizen(person, delta)

			if person.position.distance_to(person.target) < 0.5:
				person.target = _random_target()

		person.update_mood()

		visual.position = Vector3(
			person.position.x,
			0.0,
			person.position.y
		)

		visual.update_mood(person.mood)


func _move_citizen(person, delta: float) -> void:
	var direction: Vector2 = person.target - person.position
	var distance: float = direction.length()

	if distance < 0.01:
		return

	var movement_speed: float = person.speed * 0.035
	var movement_distance: float = minf(
		distance,
		movement_speed * delta
	)

	person.position += direction.normalized() * movement_distance

	var visual_index: int = citizens.find(person)

	if visual_index >= 0:
		var visual: Node3D = citizen_visuals[visual_index]
		visual.rotation.y = atan2(direction.x, direction.y)
