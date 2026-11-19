extends RefCounted
class_name PoliticalPosition

# Cargo politico ocupado por un ciudadano real.
var id: int = -1
var position_name: String = "Cargo sin nombre"
var institution_id: int = -1
var holder_id: int = -1

# Autoridad e influencia del cargo.
var authority: float = 0.0
var influence: float = 0.0

# Acceso y duracion del cargo.
var is_elected: bool = false
var appointment_method: String = "Nombramiento"
var term_days_remaining: int = -1
var is_active: bool = true

# Responsabilidades del cargo.
var responsibilities: Array[String] = []


func initialize(
    position_id: int,
    new_position_name: String,
    new_institution_id: int,
    authority_level: float = 0.0
) -> void:
    id = position_id
    position_name = new_position_name
    institution_id = new_institution_id
    authority = clampf(authority_level, 0.0, 100.0)
    influence = 0.0
    holder_id = -1
    is_active = true


# Asigna el cargo a un ciudadano mediante su ID.
func assign_holder(citizen_id: int) -> bool:
    if not is_active or citizen_id < 0:
        return false

    holder_id = citizen_id
    return true


# Deja vacante el cargo.
func vacate() -> int:
    var previous_holder: int = holder_id
    holder_id = -1
    return previous_holder


func has_holder() -> bool:
    return holder_id >= 0


func is_vacant() -> bool:
    return holder_id < 0


func set_authority(value: float) -> void:
    authority = clampf(value, 0.0, 100.0)


func set_influence(value: float) -> void:
    influence = clampf(value, 0.0, 100.0)


func add_responsibility(description: String) -> void:
    var clean_description: String = description.strip_edges()

    if clean_description.is_empty():
        return

    if not responsibilities.has(clean_description):
        responsibilities.append(clean_description)


func remove_responsibility(description: String) -> void:
    responsibilities.erase(description)


func get_status() -> String:
    if not is_active:
        return "Inactivo"

    if is_vacant():
        return "Vacante"

    return "Ocupado"
