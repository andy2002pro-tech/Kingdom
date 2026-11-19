extends RefCounted
class_name Faction

var id: int = 0
var faction_name: String = ""
var description: String = ""

var influence: float = 25.0
var wealth: float = 50.0
var loyalty: float = 75.0
var discontent: float = 0.0

var members: Array[int] = []
var leader_id: int = -1

var color: Color = Color.WHITE

func initialize(
    faction_id: int,
    new_name: String,
    new_description: String,
    new_color: Color
) -> void:
    id = faction_id
    faction_name = new_name
    description = new_description
    color = new_color

    influence = 25.0
    wealth = 50.0
    loyalty = 75.0
    discontent = 0.0

    members.clear()
    leader_id = -1

func add_member(citizen_id: int) -> void:
    if not members.has(citizen_id):
        members.append(citizen_id)

func remove_member(citizen_id: int) -> void:
    members.erase(citizen_id)

    if leader_id == citizen_id:
        leader_id = -1

func set_leader(citizen_id: int) -> void:
    if members.has(citizen_id):
        leader_id = citizen_id

func adjust_influence(amount: float) -> void:
    influence = clampf(influence + amount, 0.0, 100.0)

func adjust_wealth(amount: float) -> void:
    wealth = clampf(wealth + amount, 0.0, 100.0)

func adjust_loyalty(amount: float) -> void:
    loyalty = clampf(loyalty + amount, 0.0, 100.0)

func adjust_discontent(amount: float) -> void:
    discontent = clampf(discontent + amount, 0.0, 100.0)

func get_status() -> String:
    if discontent >= 80.0:
        return "Rebelde"
    elif discontent >= 60.0:
        return "Descontenta"
    elif loyalty >= 80.0:
        return "Leal"
    elif loyalty <= 25.0:
        return "Desconfiada"
    else:
        return "Neutral"

func is_hostile() -> bool:
    return discontent >= 80.0 or loyalty <= 10.0
