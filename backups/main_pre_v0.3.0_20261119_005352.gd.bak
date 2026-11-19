extends Node2D

var citizens: Array[Citizen] = []
var rng = RandomNumberGenerator.new()

const GRASS = Color("#668b4b")
const ROAD = Color("#b99b70")
const DARK_ROOF = Color("#654638")

const FOOD_POINT = Vector2(737, 320)

const HOUSE_POSITIONS = [
    Vector2(170, 235),
    Vector2(850, 205),
    Vector2(180, 475),
    Vector2(900, 470)
]

func _ready() -> void:
    rng.randomize()
    create_citizens()
    queue_redraw()

func create_citizens() -> void:
    citizens.clear()

    for i in range(12):
        var person = Citizen.new()
        person.initialize(i, rng)

        person.position = Vector2(
            rng.randf_range(180, 1100),
            rng.randf_range(150, 620)
        )

        person.home_position = (
            HOUSE_POSITIONS[i % HOUSE_POSITIONS.size()]
            + Vector2(52, 95)
        )

        person.target = _random_target()
        citizens.append(person)

func _random_target() -> Vector2:
    return Vector2(
        rng.randf_range(100, 1180),
        rng.randf_range(120, 650)
    )

func _process(delta: float) -> void:
    for person in citizens:
        _update_citizen(person, delta)

    queue_redraw()

func _update_citizen(person: Citizen, delta: float) -> void:
    # El hambre aumenta con el paso del tiempo.
    person.hunger = maxf(
        0.0,
        person.hunger - delta * 0.35
    )

    if person.activity == "Comiendo":
        person.position = person.position.move_toward(
            person.target,
            person.speed * delta
        )

        if person.position.distance_to(FOOD_POINT) < 14.0:
            person.hunger = minf(
                100.0,
                person.hunger + delta * 18.0
            )

            if person.hunger >= 98.0:
                person.activity = "Paseando"
                person.target = _random_target()

    elif person.activity == "Descansando":
        person.position = person.position.move_toward(
            person.target,
            person.speed * delta
        )

        if person.position.distance_to(person.home_position) < 14.0:
            person.energy = minf(
                100.0,
                person.energy + delta * 14.0
            )

            if person.energy >= 98.0:
                person.activity = "Paseando"
                person.target = _random_target()

    else:
        person.energy = maxf(
            0.0,
            person.energy - delta * 0.15
        )

        if person.hunger < 35.0:
            person.activity = "Comiendo"
            person.target = FOOD_POINT

        elif person.energy < 25.0:
            person.activity = "Descansando"
            person.target = person.home_position

        else:
            person.position = person.position.move_toward(
                person.target,
                person.speed * delta
            )

            if person.position.distance_to(person.target) < 8.0:
                person.target = _random_target()

    person.update_mood()

func _mood_color(mood: String) -> Color:
    match mood:
        "Feliz":
            return Color("#ffe066")
        "Contento":
            return Color("#75d879")
        "Hambriento":
            return Color("#ef754c")
        "Cansado":
            return Color("#83a9dc")
        "Triste":
            return Color("#a58bd4")
        _:
            return Color.WHITE

func _draw() -> void:
    # Terreno
    draw_rect(
        Rect2(0, 0, 1280, 720),
        GRASS
    )

    # Caminos principales
    draw_rect(
        Rect2(0, 330, 1280, 90),
        ROAD
    )
    draw_rect(
        Rect2(580, 0, 110, 720),
        ROAD
    )

    # Caminos secundarios
    draw_rect(
        Rect2(120, 180, 350, 38),
        ROAD
    )
    draw_rect(
        Rect2(820, 520, 350, 38),
        ROAD
    )

    # Árboles
    for i in range(45):
        var x = float((i * 173 + 37) % 1240) + 20
        var y = float((i * 97 + 53) % 680) + 20

        if abs(y - 375) > 65 and abs(x - 635) > 75:
            draw_rect(
                Rect2(x - 5, y + 8, 10, 15),
                Color("#68472e")
            )
            draw_circle(
                Vector2(x, y),
                17,
                Color("#315c37")
            )
            draw_circle(
                Vector2(x - 5, y - 5),
                11,
                Color("#477c42")
            )

    # Casas
    draw_house(Vector2(170, 235), "CASA 1")
    draw_house(Vector2(850, 205), "CASA 2")
    draw_house(Vector2(180, 475), "CASA 3")
    draw_house(Vector2(900, 470), "CASA 4")

    # Puesto de comida
    draw_rect(
        Rect2(700, 255, 74, 50),
        Color("#d6b78b")
    )
    draw_rect(
        Rect2(694, 247, 86, 15),
        Color("#b84b3f")
    )
    draw_rect(
        Rect2(725, 276, 20, 29),
        Color("#593b29")
    )
    draw_string(
        ThemeDB.fallback_font,
        Vector2(690, 326),
        "COMIDA",
        HORIZONTAL_ALIGNMENT_LEFT,
        -1,
        13,
        Color.WHITE
    )

    # Habitantes
    for person in citizens:
        var p = person.position

        draw_circle(
            p + Vector2(0, 9),
            10,
            Color(0, 0, 0, 0.25)
        )

        draw_circle(
            p,
            8,
            person.color
        )

        draw_circle(
            p + Vector2(0, -5),
            5,
            Color("#edc69b")
        )

        draw_circle(
            p + Vector2(9, -9),
            3,
            _mood_color(person.mood)
        )

    # Interfaz
    var average_hunger = 0.0
    var average_energy = 0.0

    for person in citizens:
        average_hunger += person.hunger
        average_energy += person.energy

    if citizens.size() > 0:
        average_hunger /= citizens.size()
        average_energy /= citizens.size()

    draw_rect(
        Rect2(15, 15, 420, 105),
        Color(0.08, 0.12, 0.08, 0.88)
    )

    draw_string(
        ThemeDB.fallback_font,
        Vector2(30, 44),
        "SOCIEDADVIVA",
        HORIZONTAL_ALIGNMENT_LEFT,
        -1,
        25,
        Color("#f5e6c5")
    )

    draw_string(
        ThemeDB.fallback_font,
        Vector2(30, 72),
        "Habitantes: %d / 12" % citizens.size(),
        HORIZONTAL_ALIGNMENT_LEFT,
        -1,
        17,
        Color.WHITE
    )

    draw_string(
        ThemeDB.fallback_font,
        Vector2(30, 98),
        "Hambre: %d%%   Energia: %d%%" % [
            int(average_hunger),
            int(average_energy)
        ],
        HORIZONTAL_ALIGNMENT_LEFT,
        -1,
        16,
        Color("#f5e6c5")
    )

func draw_house(pos: Vector2, label: String) -> void:
    # Sombra
    draw_rect(
        Rect2(pos + Vector2(7, 10), Vector2(112, 82)),
        Color(0, 0, 0, 0.2)
    )

    # Paredes
    draw_rect(
        Rect2(pos, Vector2(105, 75)),
        Color("#d4b88c")
    )

    # Techo
    draw_colored_polygon(
        PackedVector2Array([
            pos + Vector2(-10, 5),
            pos + Vector2(52, -40),
            pos + Vector2(115, 5)
        ]),
        DARK_ROOF
    )

    # Puerta
    draw_rect(
        Rect2(pos + Vector2(42, 39), Vector2(22, 36)),
        Color("#593b29")
    )

    # Ventana
    draw_rect(
        Rect2(pos + Vector2(12, 22), Vector2(19, 19)),
        Color("#91b8bd")
    )

    draw_string(
        ThemeDB.fallback_font,
        pos + Vector2(5, 100),
        label,
        HORIZONTAL_ALIGNMENT_LEFT,
        -1,
        13,
        Color.WHITE
    )
