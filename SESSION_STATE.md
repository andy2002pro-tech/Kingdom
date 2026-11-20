# Estado de sesión - SociedadViva

## Estado del proyecto
- Última versión funcional confirmada: v0.4.1.
- Versión en preparación: v0.5.0, sin completar.
- Motor: Godot 4.7.
- Rama Git: main.
- Repositorio remoto: andy2002pro-tech/Kingdom.
- Dirección aprobada: SociedadViva 3D.
- Estilo visual: low-poly moderno.
- Enfoque: híbrido, simulación social profunda y representación 3D.

## Trabajo realizado y confirmado
- Existen modelos iniciales `scripts/models/institution.gd` y `scripts/models/political_position.gd`.
- Ambos están versionados en Git.
- Los modelos fueron inspeccionados; todavía no están integrados en la simulación principal.
- Se prepararon `estado.sh`, `probar.sh` y `guardar.sh` en `~/bin`.
- Los tres comandos están disponibles directamente en Termux.
- `estado.sh` y `probar.sh` fueron probados.
- `guardar.sh` superó una prueba básica: creó un respaldo TAR.GZ legible y terminó sin crear commit ni subir cambios.
- `guardar.sh` protege los cambios que ya estaban preparados y ya no contiene instrucciones `git reset`.
- La prueba real de commit y push todavía está pendiente.
- Se confirmó que los respaldos y archivos `.uid` no se agregan mediante la selección de archivos nuevos.

## Decisiones de diseño confirmadas
- Mundo 3D low-poly moderno.
- Cámara híbrida: tercera persona y vista estratégica elevada.
- Cámara libre con zoom, giro y seguimiento.
- Ciudadanos con identidad, personalidad, relaciones, necesidades e historia.
- Simulación por niveles de detalle para rendimiento.
- Combate en tiempo real en una etapa posterior, con control directo, órdenes tácticas y pausa opcional.
- La muerte del gobernante no debe terminar necesariamente la partida; la continuidad puede pasar a un sucesor u otro personaje.

## Próximo objetivo
Construir el primer prototipo visual 3D sin destruir ni reemplazar el proyecto 2D existente.

Orden previsto:
1. Revisar la configuración actual de Godot y preparar una estructura 3D separada.
2. Crear una escena de terreno low-poly.
3. Añadir iluminación y ambiente.
4. Preparar cámara estratégica con zoom y rotación.
5. Añadir árboles, caminos y edificios de prueba.
6. Incorporar cinco ciudadanos autónomos.
7. Probar importación y ejecución en Godot Android.

## Pendiente inmediato
- Revisar el diff de los documentos actualizados.
- Ejecutar `probar.sh`.
- Revisar los cambios en Godot cuando corresponda.
- Crear respaldo con `guardar.sh`.
- Guardar y publicar los documentos mediante Git, únicamente después de revisar y confirmar.

## Reglas de trabajo
- Guiar al usuario en español, paso a paso y con un comando por vez.
- Esperar la salida antes de avanzar.
- No asumir que un comando se ejecutó si no hay resultado.
- No borrar archivos `.uid` ni respaldos sin una razón explícita.
- No declarar versiones funcionales sin pruebas.
- No reemplazar la escena 2D hasta que la transición esté comprobada.
