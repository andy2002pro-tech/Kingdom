# Estado de sesión - SociedadViva

## Estado del proyecto

- Última versión numerada funcional: v0.4.1.
- Etapa actual: prototipo 3D en desarrollo.
- Motor: Godot 4.7.2.
- Plataforma objetivo y entorno principal: PC con Windows.
- Entorno alternativo: Android/Termux para edición y programación.
- Rama Git: `main`.
- Repositorio remoto: `andy2002pro-tech/Kingdom`.
- Dirección visual: 3D low-poly moderno.
- Prioridad inmediata: consolidar el mundo y desarrollar la construcción.
- Enfoque: ciudadanos autónomos con posibilidad de intervención y gestión del jugador.

## Trabajo presente en el prototipo

- La escena principal apunta a `scenes/world_3d/world_3d.tscn`.
- Terreno de prueba, caminos, árboles y tres casas.
- Doce ciudadanos con movimiento básico.
- Necesidades de hambre y energía, alimentación y descanso.
- Cámara estratégica con WASD, Shift, Q/E y rueda del ratón.
- Selección mediante clic.
- Ficha individual con necesidades, actividad, ánimo y datos personales y sociales.
- Indicador visual y seguimiento del ciudadano seleccionado.
- El panel permite desplazarse sin alterar el zoom; comprobado en Godot.
- El controlador contiene reloj, calendario y velocidades 1x, 2x y 4x. Las teclas 1, 2, 3 y Espacio están asignadas en el código; deben validarse en ejecución.

El controlador contiene lógica social y familiar. No se debe asumir que todos esos comportamientos están completamente validados.

## Decisiones de diseño confirmadas

- Windows es la plataforma principal; Android es un entorno auxiliar.
- Mundo 3D low-poly moderno.
- Cámara estratégica en el prototipo; tercera persona como objetivo futuro.
- Simulación híbrida: ciudadanos autónomos y jugador con capacidad de intervenir.
- Ciudadanos con identidad, personalidad, relaciones, necesidades e historia.
- Construcción y mundo como prioridad inmediata.
- Sistemas económicos, políticos, diplomáticos y militares se incorporarán gradualmente.
- No declarar versiones funcionales sin pruebas.

## Próximo objetivo

Desarrollar el sistema de construcción sobre el mundo 3D existente.

1. Revisar y consolidar terreno y distribución del asentamiento.
2. Implementar el modo de construcción.
3. Permitir seleccionar, colocar y orientar edificios.
4. Validar espacios y gestionar cancelación o retirada.
5. Avanzar hacia viviendas, hogares y zonas productivas.
6. Conectar progresivamente ciudadanos, recursos y producción.

## Pendiente de validación

- Probar en Godot controles de velocidad y pausa.
- Continuar comprobando actividades autónomas y sociales.
- Revisar el sistema de construcción cuando se implemente.
- Revisar el estado real del proyecto antes de cada parche.
- Mantener respaldos y resolver conflictos de Syncthing sin borrar archivos automáticamente.

## Reglas de trabajo

- Guiar en español, paso a paso y con un comando por vez.
- Esperar el resultado antes de avanzar.
- No asumir que un comando se ejecutó sin ver su salida.
- No modificar código del juego sin autorización.
- No subir cambios a GitHub sin autorización explícita.
- No usar `git add .` para publicar documentación.
- No borrar archivos `.uid`, respaldos ni conflictos de Syncthing sin autorización.
- Separar diseño, código presente y funcionamiento comprobado.
