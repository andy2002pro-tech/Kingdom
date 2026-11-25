# SociedadViva

**Simulador medieval de sociedad, construcción, política y estrategia desarrollado con Godot 4.7.2.**

SociedadViva es un sandbox de reinos vivos. El jugador participa en la transformación de una sociedad cuyos ciudadanos, familias, facciones, instituciones y reinos desarrollan objetivos e intereses propios.

> No construiremos un mundo donde todo dependa del jugador. Construiremos un mundo donde el jugador sea una de las fuerzas que lo transforman.

## Estado del desarrollo

**Última versión numerada funcional: v0.4.1.**
**Etapa actual: prototipo 3D en desarrollo.**

La transición a 3D ya cuenta con una escena principal propia y un prototipo en desarrollo. Esto no constituye todavía una nueva versión numerada ni una entrega completa.

### Elementos presentes en el prototipo 3D

- Escena principal 3D: `scenes/world_3d/world_3d.tscn`.
- Terreno, caminos, árboles y tres casas de prueba.
- Doce ciudadanos generados con movimiento básico.
- Necesidades de hambre y energía, alimentación y descanso.
- Cámara estratégica con movimiento, aceleración, giro y zoom.
- Selección de ciudadanos mediante clic.
- Ficha individual con necesidades, actividad, ánimo y datos personales y sociales.
- Indicador visual del ciudadano seleccionado y seguimiento con la cámara.
- El panel permite desplazarse sin que la rueda del ratón cambie el zoom; comprobado en Godot.

El controlador contiene también lógica para reloj, calendario, actividades sociales y formación de familias. Su funcionamiento completo debe seguir validándose en ejecución.

### Sistemas anteriores

La v0.4.1 incorporó la base social 2D: ciudadanos, necesidades, personalidades, relaciones y facciones. Ese trabajo se conserva como parte del historial.

## Visión del juego

- **Sociedad autónoma:** ciudadanos y familias con necesidades, ambiciones, lealtades y conflictos.
- **Construcción y economía:** viviendas, edificios, producción, recursos, zonas de trabajo, almacenamiento y transporte.
- **Gobierno y política:** instituciones, cargos, leyes, legitimidad y autoridad.
- **Mundo estratégico:** territorios, asentamientos, fronteras, reinos vecinos y grupos independientes.
- **Diplomacia y guerra:** alianzas, tratados, comercio, espionaje, conflictos y ejércitos.
- **Historia y legado:** acontecimientos persistentes, biografías, sucesiones, monumentos y crónicas.

La visión completa está en `GAME_DESIGN.md`; las etapas están en `ROADMAP.md` y `HOJA_DE_RUTA_MAESTRA.md`. Los objetivos de diseño no deben interpretarse como sistemas implementados.

## Estado actual y próxima etapa

La prioridad inmediata es **consolidar el mundo 3D y desarrollar la construcción**: herramientas para colocar edificios, organizar viviendas y crear espacios productivos.

Después se ampliarán la autonomía ciudadana, la economía, las instituciones y los sistemas políticos. El combate avanzado queda para etapas posteriores.

Los modelos `institution.gd` y `political_position.gd` existen, pero no están integrados en la simulación principal ni constituyen un sistema de gobierno funcional.

## Tecnología y entorno

- Motor: Godot 4.7.2.
- Lenguaje: GDScript.
- Plataforma objetivo y entorno principal: PC con Windows.
- Entorno alternativo: Android con Termux para editar y programar cuando no se disponga de la PC.
- Dirección visual: 3D low-poly moderno.
- Interacción prevista: simulación autónoma con intervención y gestión del jugador.

## Estructura del repositorio

- `project.godot`: configuración.
- `scenes/world_3d/`: escena y mundo 3D.
- `scenes/buildings/`: escenas de edificios.
- `scripts/world_3d/`: lógica del mundo 3D.
- `scripts/buildings/`: lógica de construcción y edificios.
- `scripts/models/`: modelos de ciudadanos y otros sistemas.
- `scripts/visuals/`: representación visual.
- `GAME_DESIGN.md`: visión y diseño.
- `ROADMAP.md`: versiones y objetivos.
- `HOJA_DE_RUTA_MAESTRA.md`: referencia de continuidad.
- `SESSION_STATE.md`: estado de trabajo.
- `CHANGELOG.md`: historial.

Las carpetas de respaldos y los archivos de conflicto de sincronización son elementos de mantenimiento; no forman parte de la funcionalidad del juego.

## Desarrollo

Repositorio: [andy2002pro-tech/Kingdom](https://github.com/andy2002pro-tech/Kingdom)

La rama principal es `main`. Windows es la fuente principal de desarrollo. Android/Termux es un entorno auxiliar, no la plataforma principal de ejecución.

## Estado del proyecto

SociedadViva se desarrolla gradualmente. La prioridad es mantener una base jugable, probar cada etapa y ampliar la simulación sin confundir objetivos futuros con funciones terminadas.
