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

var mood: String = "Contento"
var activity: String = "Libre"

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
    activity = "Libre"

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
