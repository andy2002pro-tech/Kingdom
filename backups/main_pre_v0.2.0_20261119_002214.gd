extends Node2D

var citizens: Array = []
var rng = RandomNumberGenerator.new()

const GRASS = Color("#668b4b")
const ROAD = Color("#b99b70")
const DARK_ROOF = Color("#654638")

func _ready():
    rng.randomize()
    create_citizens()
    queue_redraw()

func create_citizens():
    for i in range(12):
        var start = Vector2(
            rng.randf_range(180, 1100),
            rng.randf_range(150, 620)
        )
        citizens.append({
            "pos": start,
            "target": start + Vector2(
                rng.randf_range(-150, 150),
                rng.randf_range(-100, 100)
            ),
            "speed": rng.randf_range(25, 48),
            "color": Color.from_hsv(
                rng.randf(),
                0.55,
                rng.randf_range(0.65, 0.95)
            )
        })

func _process(delta):
    for i in range(citizens.size()):
        var person = citizens[i]
        var pos: Vector2 = person["pos"]
        var target: Vector2 = person["target"]

        if pos.distance_to(target) < 8:
            target = Vector2(
                rng.randf_range(100, 1180),
                rng.randf_range(120, 650)
            )

        pos = pos.move_toward(
            target,
            float(person["speed"]) * delta
        )

        person["pos"] = pos
        person["target"] = target
        citizens[i] = person

    queue_redraw()

func _draw():
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

    # Habitantes
    for person in citizens:
        var p: Vector2 = person["pos"]
        var c: Color = person["color"]

        draw_circle(p + Vector2(0, 9), 10, Color(0, 0, 0, 0.25))
        draw_circle(p, 8, c)
        draw_circle(
            p + Vector2(0, -5),
            5,
            Color("#edc69b")
        )

    # Interfaz
    draw_rect(
        Rect2(15, 15, 340, 76),
        Color(0.08, 0.12, 0.08, 0.85)
    )

    draw_string(
        ThemeDB.fallback_font,
        Vector2(30, 46),
        "SOCIEDADVIVA",
        HORIZONTAL_ALIGNMENT_LEFT,
        -1,
        25,
        Color("#f5e6c5")
    )

    draw_string(
        ThemeDB.fallback_font,
        Vector2(30, 73),
        "Habitantes: %d / 12" % citizens.size(),
        HORIZONTAL_ALIGNMENT_LEFT,
        -1,
        17,
        Color.WHITE
    )

func draw_house(pos: Vector2, label: String):
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
