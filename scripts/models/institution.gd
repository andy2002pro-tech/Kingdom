extends RefCounted
class_name Institution

# Identidad de la institucion.
var id: int = -1
var institution_name: String = "Institucion sin nombre"
var description: String = ""

# Organizacion y cadena de mando.
var member_citizen_ids: Array[int] = []
var position_ids: Array[int] = []
var leader_position_id: int = -1

# Poder y recursos institucionales.
var authority: float = 0.0
var influence: float = 0.0
var budget: float = 0.0
var is_active: bool = true

# Funciones de la institucion.
var responsibilities: Array[String] = []


func initialize(
    institution_id: int,
    new_name: String,
    new_description: String = "",
    authority_level: float = 0.0
) -> void:
    id = institution_id
    institution_name = new_name.strip_edges()
    description = new_description.strip_edges()
    authority = clampf(authority_level, 0.0, 100.0)
    influence = 0.0
    budget = 0.0
    is_active = true
    member_citizen_ids.clear()
    position_ids.clear()
    leader_position_id = -1
    responsibilities.clear()


# Administrar miembros.
func add_member(citizen_id: int) -> bool:
    if not is_active or citizen_id < 0:
        return false

    if member_citizen_ids.has(citizen_id):
        return false

    member_citizen_ids.append(citizen_id)
    return true


func remove_member(citizen_id: int) -> bool:
    var member_index: int = member_citizen_ids.find(citizen_id)

    if member_index == -1:
        return false

    member_citizen_ids.remove_at(member_index)
    return true


func has_member(citizen_id: int) -> bool:
    return member_citizen_ids.has(citizen_id)


# Administrar cargos.
func add_position(position_id: int) -> bool:
    if not is_active or position_id < 0:
        return false

    if position_ids.has(position_id):
        return false

    position_ids.append(position_id)
    return true


func remove_position(position_id: int) -> bool:
    var position_index: int = position_ids.find(position_id)

    if position_index == -1:
        return false

    position_ids.remove_at(position_index)

    if leader_position_id == position_id:
        leader_position_id = -1

    return true


func set_leader_position(position_id: int) -> bool:
    if not is_active or not position_ids.has(position_id):
        return false

    leader_position_id = position_id
    return true


# Poder y presupuesto.
func set_authority(value: float) -> void:
    authority = clampf(value, 0.0, 100.0)


func set_influence(value: float) -> void:
    influence = clampf(value, 0.0, 100.0)


func change_budget(amount: float) -> void:
    budget = maxf(0.0, budget + amount)


# Responsabilidades institucionales.
func add_responsibility(responsibility: String) -> void:
    var clean_description: String = responsibility.strip_edges()

    if clean_description.is_empty():
        return

    if not responsibilities.has(clean_description):
        responsibilities.append(clean_description)


func remove_responsibility(responsibility: String) -> void:
    responsibilities.erase(responsibility)


# Activar o desactivar institucion.
func deactivate() -> void:
    is_active = false


func activate() -> void:
    is_active = true


func get_status() -> String:
    if not is_active:
        return "Inactiva"

    if leader_position_id == -1:
        return "Sin direccion"

    return "Activa"
