extends Node3D

@export var wall_color := Color(0.48, 0.29, 0.16)
@export var roof_color := Color(0.30, 0.12, 0.10)

func _ready() -> void:
        create_house()


func create_house() -> void:
        var stone := _material(Color(0.42, 0.42, 0.39))
        var wood := _material(wall_color)
        var roof := _material(roof_color)
        var door_mat := _material(Color(0.22, 0.12, 0.07))
        var glass := _material(Color(0.25, 0.55, 0.68))

        # Base de piedra
        _box("StoneFoundation", Vector3(4.4, 0.35, 4.4),
                Vector3(0, 0.18, 0), stone)

        # Paredes
        _box("FrontWallLeft", Vector3(1.35, 2.5, 0.25),
                Vector3(-1.32, 1.55, -2), wood)
        _box("FrontWallRight", Vector3(1.35, 2.5, 0.25),
                Vector3(1.32, 1.55, -2), wood)
        _box("BackWall", Vector3(4, 2.5, 0.25),
                Vector3(0, 1.55, 2), wood)
        _box("LeftWall", Vector3(0.25, 2.5, 4),
                Vector3(-2, 1.55, 0), wood)
        _box("RightWall", Vector3(0.25, 2.5, 4),
                Vector3(2, 1.55, 0), wood)

        # Puerta
        _box("Door", Vector3(1.05, 2.1, 0.12),
                Vector3(0, 1.25, -2.14), door_mat)

        # Ventanas
        _box("WindowLeft", Vector3(0.8, 0.75, 0.12),
                Vector3(-1.1, 1.75, -2.16), glass)
        _box("WindowRight", Vector3(0.8, 0.75, 0.12),
                Vector3(1.1, 1.75, -2.16), glass)

        # Techo a dos aguas
        _roof_panel(Vector3(0, 3.05, -1.05), -0.55, roof)
        _roof_panel(Vector3(0, 3.05, 1.05), 0.55, roof)


func _material(color: Color) -> StandardMaterial3D:
        var material := StandardMaterial3D.new()
        material.albedo_color = color
        material.roughness = 1.0
        return material


func _box(
        object_name: String,
        dimensions: Vector3,
        object_position: Vector3,
        material: Material
) -> void:
        var mesh_instance := MeshInstance3D.new()
        var mesh := BoxMesh.new()
        mesh.size = dimensions
        mesh_instance.name = object_name
        mesh_instance.mesh = mesh
        mesh_instance.material_override = material
        mesh_instance.position = object_position
        add_child(mesh_instance)


func _roof_panel(
        object_position: Vector3,
        angle: float,
        material: Material
) -> void:
        var panel := MeshInstance3D.new()
        var mesh := BoxMesh.new()
        mesh.size = Vector3(4.7, 0.18, 2.5)
        panel.mesh = mesh
        panel.material_override = material
        panel.position = object_position
        panel.rotation.x = angle
        add_child(panel)
