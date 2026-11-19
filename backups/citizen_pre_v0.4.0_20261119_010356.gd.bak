extends RefCounted
class_name Citizen

const NAMES = [
    "Aldric", "Elena", "Bruno", "Isabela",
    "Mateo", "Clara", "Hugo", "Sofia",
    "Leon", "Marta", "Diego", "Amara"
]

const PERSONALITIES = [
    "Trabajador",
    "Sociable",
    "Tranquilo",
    "Curioso",
    "Aventurero"
]

var id: int = 0
var citizen_name: String = ""
var age: int = 20
var personality: String = ""

var hunger: float = 100.0
var energy: float = 100.0
var happiness: float = 75.0

var speed: float = 35.0
var color: Color = Color.WHITE

var position: Vector2 = Vector2.ZERO
var target: Vector2 = Vector2.ZERO
var home_position: Vector2 = Vector2.ZERO

var mood: String = "Contento"
var activity: String = "Paseando"

# Sistema social v0.3.0
var relationships: Dictionary = {}
var social_partner_id: int = -1
var social_time: float = 0.0
var social_cooldown: float = 0.0
var conversations: int = 0

func initialize(citizen_id: int, rng: RandomNumberGenerator) -> void:
    id = citizen_id
    citizen_name = NAMES[citizen_id % NAMES.size()]
    age = rng.randi_range(18, 65)

    personality = PERSONALITIES[
        rng.randi_range(0, PERSONALITIES.size() - 1)
    ]

    hunger = rng.randf_range(65.0, 100.0)
    energy = rng.randf_range(65.0, 100.0)
    happiness = rng.randf_range(60.0, 95.0)

    speed = rng.randf_range(25.0, 48.0)

    if personality == "Aventurero":
        speed *= 1.15
    elif personality == "Tranquilo":
        speed *= 0.85

    color = Color.from_hsv(
        rng.randf(),
        0.55,
        rng.randf_range(0.65, 0.95)
    )

    mood = "Contento"
    activity = "Paseando"

    relationships.clear()
    social_partner_id = -1
    social_time = 0.0
    social_cooldown = rng.randf_range(2.0, 8.0)
    conversations = 0

func set_relationship(other_id: int, affinity: float) -> void:
    relationships[other_id] = clampf(affinity, -100.0, 100.0)

func get_relationship(other_id: int) -> float:
    return float(relationships.get(other_id, 0.0))

func adjust_relationship(other_id: int, amount: float) -> void:
    set_relationship(
        other_id,
        get_relationship(other_id) + amount
    )

func get_relationship_status(other_id: int) -> String:
    var affinity = get_relationship(other_id)

    if affinity >= 60.0:
        return "Amigo"
    elif affinity <= -40.0:
        return "Rival"
    elif affinity >= 15.0:
        return "Conocido"
    else:
        return "Desconocido"

func update_mood() -> void:
    if hunger < 20.0:
        mood = "Hambriento"
    elif energy < 20.0:
        mood = "Cansado"
    elif happiness < 30.0:
        mood = "Triste"
    elif happiness > 80.0:
        mood = "Feliz"
    else:
        mood = "Contento"
