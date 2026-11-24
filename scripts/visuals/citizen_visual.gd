extends Node3D

var citizen_data
var mood_marker: MeshInstance3D


func setup(data) -> void:
    citizen_data = data
    name = "Citizen_%d" % data.id

    var clothes := StandardMaterial3D.new()
    clothes.albedo_color = data.color
    clothes.roughness = 1.0

    var skin := StandardMaterial3D.new()
    skin.albedo_color = Color("#e5b98e")

    var dark := StandardMaterial3D.new()
    dark.albedo_color = Color("#49372b")

    # Cuerpo
    var body := CapsuleMesh.new()
    body.radius = 0.25
    body.height = 0.95
    _add_part(body, clothes, Vector3(0, 1.0, 0))

    # Cabeza
    var head := SphereMesh.new()
    head.radius = 0.23
    head.height = 0.46
    _add_part(head, skin, Vector3(0, 1.72, 0))

    # Pelo
    var hair := SphereMesh.new()
    hair.radius = 0.235
    hair.height = 0.25
    _add_part(hair, dark, Vector3(0, 1.88, 0))

    # Brazos
    var arm := CylinderMesh.new()
    arm.top_radius = 0.09
    arm.bottom_radius = 0.11
    arm.height = 0.65

    var left_arm := MeshInstance3D.new()
    left_arm.mesh = arm
    left_arm.material_override = clothes
    left_arm.position = Vector3(-0.34, 1.0, 0)
    left_arm.rotation.z = -0.15
    add_child(left_arm)

    var right_arm := MeshInstance3D.new()
    right_arm.mesh = arm
    right_arm.material_override = clothes
    right_arm.position = Vector3(0.34, 1.0, 0)
    right_arm.rotation.z = 0.15
    add_child(right_arm)

    # Piernas
    var leg := CylinderMesh.new()
    leg.top_radius = 0.10
    leg.bottom_radius = 0.11
    leg.height = 0.72

    _add_part(leg, dark, Vector3(-0.14, 0.38, 0))
    _add_part(leg, dark, Vector3(0.14, 0.38, 0))

    # Indicador de estado de ánimo
    mood_marker = MeshInstance3D.new()

    var marker_mesh := SphereMesh.new()
    marker_mesh.radius = 0.075
    marker_mesh.height = 0.15

    mood_marker.mesh = marker_mesh
    mood_marker.position = Vector3(0, 2.12, 0)
    add_child(mood_marker)

    update_mood(data.mood)


func _add_part(
    mesh: Mesh,
    material: Material,
    part_position: Vector3
) -> void:
    var part := MeshInstance3D.new()
    part.mesh = mesh
    part.material_override = material
    part.position = part_position
    add_child(part)


func update_mood(mood: String) -> void:
    if mood_marker == null:
        return

    var marker_material := StandardMaterial3D.new()

    match mood:
        "Feliz":
            marker_material.albedo_color = Color("#ffe066")
        "Contento":
            marker_material.albedo_color = Color("#75d879")
        "Hambriento":
            marker_material.albedo_color = Color("#ef754c")
        "Cansado":
            marker_material.albedo_color = Color("#83a9dc")
        "Triste":
            marker_material.albedo_color = Color("#a58bd4")
        _:
            marker_material.albedo_color = Color.WHITE

    mood_marker.material_override = marker_material
