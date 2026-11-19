# SociedadViva

**Simulador medieval de sociedad, política y estrategia desarrollado con Godot 4.7.**

SociedadViva es un sandbox de reinos vivos. El jugador comienza con una pequeña comunidad y participa en la transformación de una sociedad cuyos ciudadanos, familias, facciones, instituciones y reinos deben actuar con objetivos e intereses propios.

> No construiremos un mundo donde todo dependa del jugador. Construiremos un mundo donde el jugador sea una de las fuerzas que lo transforman.

## Estado del desarrollo

**Última versión funcional implementada: v0.4.1 — Interfaz visual de facciones.**

La versión v0.4.1 se centra en los ciudadanos, sus necesidades y relaciones sociales, y la primera representación de las facciones internas del asentamiento.

### Sistemas implementados

- Mundo y asentamiento representados en 2D.
- Ciudadanos autónomos con movimiento y actividades.
- Necesidades de hambre y energía, descanso y alimentación.
- Personalidades, estados de ánimo y atributos individuales.
- Relaciones sociales entre ciudadanos.
- Encuentros y conversaciones autónomas.
- Cuatro facciones iniciales: familias nobles, comerciantes, militares y pueblo.
- Pertenencia de ciudadanos a facciones.
- Datos básicos de influencia, riqueza, lealtad y descontento de las facciones.
- Identificación visual de la facción de cada ciudadano y panel informativo de facciones.

Estos sistemas constituyen la base de desarrollo; no representan todavía la simulación completa de un reino.

## Visión del juego

El objetivo es crear una simulación donde las historias surjan de las decisiones y relaciones entre personajes y grupos:

- **Gobierno y política:** monarquía, república, oligarquía y dictadura, con instituciones, cargos, legitimidad y autoridad.
- **Sociedad autónoma:** ciudadanos, familias y facciones con necesidades, ambiciones, lealtades y conflictos.
- **Ascenso social:** cualquier ciudadano podría llegar a ocupar posiciones de poder según sus capacidades, relaciones y circunstancias.
- **Economía y construcción:** asentamientos, producción, recursos, zonas de trabajo, almacenamiento y transporte.
- **Mundo estratégico:** territorios, asentamientos, fronteras, reinos vecinos y grupos independientes.
- **Diplomacia y guerra:** alianzas, tratados, comercio, espionaje, conflictos, ejércitos y asedios.
- **Historia y legado:** acontecimientos persistentes, biografías, sucesiones, monumentos y crónicas de cada reino.

La visión completa está descrita en `GAME_DESIGN.md`. Las etapas previstas están en `ROADMAP.md`. Las funciones anteriores son objetivos de diseño y no deben interpretarse como sistemas ya implementados.

## Próxima etapa: v0.5.0

La siguiente versión está planificada alrededor del **gobierno, las instituciones y los cargos**. Entre sus objetivos se encuentran:

- Modelar distintos regímenes políticos.
- Crear instituciones y cadenas de mando.
- Definir cargos y personajes que puedan ocuparlos.
- Incorporar ministros, representantes y propuestas.
- Introducir legitimidad, autoridad y apoyo político.
- Permitir decisiones negociadas o unilaterales, con consecuencias distintas según el régimen.
- Preparar el registro persistente de acontecimientos políticos.

Estos objetivos todavía están en planificación y desarrollo; no forman parte de la versión funcional v0.4.1.

## Tecnología

- Godot 4.7.
- GDScript.
- Simulación y representación 2D.
- Desarrollo y mantenimiento del proyecto desde Android, usando Termux y Godot.

## Estructura del repositorio

- `project.godot`: configuración del proyecto.
- `scenes/`: escenas del juego.
- `scripts/main.gd`: lógica principal y simulación.
- `scripts/models/citizen.gd`: modelo de ciudadano.
- `scripts/models/faction.gd`: modelo de facción.
- `GAME_DESIGN.md`: visión, sistemas y principios de diseño.
- `ROADMAP.md`: versiones y objetivos de desarrollo.
- `CHANGELOG.md`: historial de cambios, cuando corresponda.
- `backups/`: copias de seguridad locales; su contenido puede variar y no todas las copias tienen por qué estar publicadas.

## Desarrollo

El proyecto se mantiene en el repositorio:

[andy2002pro-tech/Kingdom](https://github.com/andy2002pro-tech/Kingdom)

La rama principal de desarrollo es `main`. Los cambios se revisan y guardan mediante Git antes de publicarse.

## Estado del proyecto

SociedadViva está en una etapa temprana de desarrollo. La visión incluye sistemas de gran alcance, pero se construirán por etapas, procurando mantener una base técnica funcional y coherente.
