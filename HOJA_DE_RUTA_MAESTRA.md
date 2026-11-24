# SociedadViva 3D --- Hoja de ruta maestra

**Versión:** 1.0\
**Fecha de actualización:** 23 de noviembre de 2026\
**Motor:** Godot 4.7.2\
**Plataforma prioritaria:** Android\
**Estado:** Documento de diseño; no implica que todos los sistemas estén
programados.

------------------------------------------------------------------------

## 1. Propósito y visión

SociedadViva 3D será un simulador medieval de civilizaciones vivas que
combine simulación social profunda y representación 3D low-poly moderna.
El mundo debe evolucionar mediante las decisiones y necesidades de
ciudadanos, familias, empresas, comunidades, instituciones y reinos.

El jugador podrá intervenir como gobernante, administrador,
fundador/constructor u observador, según el modo de juego. Sus
facultades dependerán del papel elegido y de las instituciones del
reino. También podrá ejercer poder autoritario cuando corresponda, pero
sus decisiones producirán consecuencias sociales, económicas y
políticas.

### Principios fundamentales

1.  **Autonomía:** ciudadanos, familias, negocios, comunidades e
    instituciones toman decisiones propias.
2.  **Variabilidad institucional:** leyes, derechos, gobiernos,
    economía, justicia, religión, educación y políticas cambian de un
    reino a otro.
3.  **Causalidad:** los acontecimientos deben tener causas
    identificables y consecuencias conectadas.
4.  **Recursos finitos:** bienes, dinero, alimentos, materiales,
    capacidad laboral y almacenamiento no aparecen mágicamente.
5.  **Trazabilidad:** los objetos y transacciones importantes tienen
    origen, propietario, ubicación, destino e historial.
6.  **Información imperfecta:** los personajes y gobiernos no conocen
    instantáneamente todo lo que ocurre.
7.  **Evolución asimétrica:** cada reino puede especializarse, adoptar,
    desarrollar o perder conocimientos de forma diferente.
8.  **Persistencia:** ciudadanos, familias, empresas, edificios,
    instituciones y acontecimientos conservan su identidad e historia.
9.  **Rendimiento:** el detalle de simulación se adapta a la distancia,
    importancia y recursos disponibles.
10. **Diseño por fases:** primero se diseña y valida cada sistema;
    después se implementa gradualmente en Godot.

------------------------------------------------------------------------

## 2. Sistemas de sociedad y población

### 2.1 Ciudadanos

Cada ciudadano tendrá un identificador persistente y datos propios:
nombre, edad, apariencia, salud, necesidades, habilidades, profesión,
recursos, pertenencias, relaciones, hogar, cultura, creencias,
reputación, objetivos y recuerdos relevantes.

La IA decidirá mediante necesidades, objetivos, prioridades, recursos,
información disponible y circunstancias. El ciclo general será: evaluar,
considerar opciones, elegir, actuar, registrar el resultado y adaptarse.

### 2.2 Ciclo de vida

Infancia, adolescencia, adultez, madurez, vejez y fallecimiento. Los
niños crecerán y conservarán rasgos visuales reconocibles. La mortalidad
tendrá causas como vejez, enfermedad, hambre, accidentes, violencia,
guerra y complicaciones del parto.

### 2.3 Familias y relaciones

Parentesco, parejas, matrimonio, convivencia, adopción, tutela, crianza,
herencia, hogares compartidos y separación familiar. Las normas
dependerán de las leyes y costumbres del reino; las relaciones reales
podrán diferir de las normas oficiales.

Las relaciones incluirán confianza, afecto, rivalidad, lealtad, miedo,
reputación, compromisos y memoria de experiencias.

### 2.4 Demografía y migraciones

Nacimientos, muertes, envejecimiento, migraciones voluntarias,
inmigración, emigración, desplazamientos forzados, refugiados, retorno y
asentamiento en nuevos territorios. Los cambios demográficos dependerán
de vivienda, empleo, alimentos, salud, seguridad, derechos y
oportunidades.

Los gobiernos podrán establecer políticas migratorias y demográficas. La
aplicación real dependerá de sus recursos y capacidad administrativa.

### 2.5 Profesiones, trabajo y habilidades

Profesiones dinámicas; aprendizaje familiar, gremial, institucional,
militar, independiente y extranjero. Habilidades basadas en
conocimiento, práctica, experiencia, herramientas, enseñanza y
condiciones. Mercado laboral con ofertas, aceptación, renuncia,
negociación, formación y cambio de empleo.

No todos los ciudadanos tendrán empleo remunerado: habrá niños,
estudiantes, cuidadores, ancianos y personas incapacitadas.

### 2.6 Bienestar y necesidades

Alimentación, descanso, vivienda, seguridad, salud, relaciones,
pertenencia, ocio y desarrollo. Las necesidades afectarán decisiones,
productividad, migraciones, satisfacción, conflictos y estabilidad.

------------------------------------------------------------------------

## 3. Vivienda, ciudades y construcción

### 3.1 Construcción híbrida

El jugador podrá ordenar construcciones dentro de sus facultades.
Ciudadanos, familias, comerciantes, gremios, comunidades e instituciones
también podrán construir, ampliar, mantener y reparar de forma autónoma
según necesidades, recursos, conocimientos, derechos y leyes.

### 3.2 Regulación

Permisos, zonificación, propiedad, restricciones y autonomía municipal
variarán por reino. Podrán existir infracciones deliberadas o por
circunstancias, con multas, paralización, demolición, confiscación
legal, juicios, sobornos y conflictos.

La aplicación de la ley dependerá de vigilancia, funcionarios, recursos,
autoridad y legitimidad.

### 3.3 Edificios y asentamientos

Edificios con propietario, materiales, costes, capacidad, habitaciones,
usos, trabajadores, inventarios, desgaste y mantenimiento. Barrios y
asentamientos crecerán, cambiarán, se deteriorarán, sufrirán incendios,
podrán ser destruidos, reconstruidos o abandonados.

### 3.4 Habitaciones y hogares

Habitaciones asignables a personas o familias, con calidad, privacidad,
mobiliario, capacidad y condiciones. Los hogares reflejarán convivencia,
parentesco, recursos y costumbres.

### 3.5 Infraestructura y servicios

Caminos, puentes, murallas, puertos, mercados, pozos, fuentes,
acueductos, alcantarillado, residuos, baños, iluminación, molinos,
hornos, almacenes, edificios públicos y servicios de emergencia. Todo
tendrá capacidad, cobertura, coste, mantenimiento, desgaste y posibles
averías.

------------------------------------------------------------------------

## 4. Economía, propiedad y empresas

### 4.1 Economía productiva

Agricultura, ganadería, minería, tala, pesca, talleres, gremios,
comercio, tributos y servicios. Cadenas productivas verificables, por
ejemplo: trigo → harina → pan; hierro → herramientas; lana → tejidos →
prendas.

La producción requiere materias primas, instalaciones, trabajadores,
habilidades, herramientas, tiempo y financiación. Se registran cantidad,
calidad, costes, desgaste, pérdidas y destino.

### 4.2 Mercados y precios

Mercados locales conectados por rutas. Los precios responden a oferta,
demanda, población, cosechas, bloqueos, guerras, transporte,
almacenamiento y políticas. Se evitarán creación arbitraria de bienes,
mercados mágicos, inflación sin causa y exploits.

### 4.3 Propiedad

Propiedad individual, familiar, societaria, gremial, comunal, religiosa,
estatal o mixta. La distribución depende de las leyes, costumbres y
sistema económico de cada reino.

### 4.4 Dinero y monedas

Sistema híbrido de dinero físico y contable. Cada reino podrá tener
moneda propia, denominaciones, autoridad emisora, materiales, pureza,
circulación y política monetaria. Existirán monedas extranjeras,
falsificaciones, cambio de divisas y diferencias entre valor nominal y
metálico.

El dinero físico tendrá propietario, ubicación, cantidad, denominación,
emisor, peso, pureza y estado. Las cuentas contables tendrán saldos,
depósitos, reservas y obligaciones. No todos los ciudadanos tendrán
cuentas.

### 4.5 Finanzas, deuda y banca

Préstamos personales, comerciales, bancarios y estatales; intereses,
vencimientos, garantías, impagos, renegociaciones, quiebras y embargos
legales. Prestamistas, cambistas, depósitos, tesorerías y bancos
aparecerán según riqueza, tecnología, comercio, instituciones y leyes.

La liquidez bancaria será real: los depósitos no equivalen a reservas
ilimitadas. Emisión, transferencia, retirada y destrucción monetaria
quedarán diferenciadas y registradas.

### 4.6 Negocios y empresas

Propiedad individual, familiar, societaria, gremial, comunitaria,
religiosa, estatal o mixta. Comerciantes ambulantes, transportistas y
artesanos podrán operar sin edificio propio.

Cada negocio tendrá identidad, propietarios, participaciones,
administración, trabajadores, local, inventarios, capital, cuentas,
ingresos, gastos, deudas, producción, ventas, reputación e historial.
Podrá contratar, invertir, ampliar, abrir sucursales, innovar,
endeudarse, vender activos, heredar, asociarse o quebrar.

Los contratos laborales incluirán salarios, horarios, responsabilidades,
condiciones, duración y beneficios. Las leyes laborales variarán por
reino.

------------------------------------------------------------------------

## 5. Comercio entre reinos

Comercio autónomo de comerciantes, empresas y gobiernos. Exportaciones,
importaciones, mercados extranjeros, contratos, proveedores,
compradores, compañías mercantiles y centros comerciales.

### Elementos

-   Rutas terrestres, fluviales y marítimas.
-   Aduanas, aranceles, permisos, inspecciones y decomisos.
-   Tratados comerciales, libre comercio, restricciones, monopolios,
    subsidios y embargos.
-   Cambio de monedas y pagos en efectivo, cuenta, crédito o
    intermediarios.
-   Contratos con cantidad, calidad, precio, moneda, entrega, plazo,
    pago y penalizaciones.
-   Riesgos de robo, piratería, accidentes, naufragios, retrasos, guerra
    y bloqueo.
-   Seguros comerciales cuando existan instituciones capaces de
    ofrecerlos.
-   Contrabando, corrupción aduanera y comercio clandestino.
-   Especialización económica evolutiva por reino.
-   Información comercial imperfecta: comerciantes conocen precios y
    oportunidades por viajes, contactos, informes y experiencia, no por
    omnisciencia.

------------------------------------------------------------------------

## 6. Transporte y logística

Sistema integrado con comercio, población, construcción, economía y
guerra.

### Medios y capacidades

Carros, carretas, barcos y embarcaciones fluviales o marítimas;
caballos, mulas, burros y bueyes. Vehículos y animales tendrán capacidad
de carga, peso, volumen, velocidad, estado, desgaste y necesidades.

Los animales requieren alimentación, descanso, salud y cuidados. Los
vehículos necesitan reparación y mantenimiento.

### Infraestructura y rutas

Caminos, puentes, calzadas, rutas fluviales, puertos, mercados,
almacenes y centros logísticos. Las rutas se planifican según tiempo,
coste, seguridad, capacidad, clima, fronteras y estado de la
infraestructura.

### Servicios y riesgos

Transportistas independientes y empresas, contratos, tarifas,
responsabilidad, pérdidas, retrasos y seguros. Transporte de pasajeros,
familias, migrantes y refugiados. Mercancías pueden dañarse, perderse o
deteriorarse durante el viaje.

### Abastecimiento

Cadenas de suministro para hogares, ciudades, negocios, instituciones y
ejércitos. Reservas, consumo, capacidad de almacenamiento,
interrupciones, escasez y distribución. La logística militar incluye
tropas, alimentos, armas, municiones, animales y equipos.

Riesgos: robos, bandidaje, piratería, accidentes, naufragios, averías,
bloqueos y guerras.

------------------------------------------------------------------------

## 7. Gobierno, política y administración

### 7.1 Modelos de gobierno

Monarquías, gobiernos compartidos, consejos, asambleas, autoridades
locales y modelos mixtos. Centralización y autonomía variables por
reino.

### 7.2 Poder y facciones

Ministros, nobles, representantes, familias poderosas, gremios,
comunidades, instituciones y facciones podrán proponer, apoyar, negociar
y oponerse. El jugador podrá decidir dentro de sus facultades o gobernar
autoritariamente, asumiendo consecuencias.

### 7.3 Política interna e intrigas

Sucesión, legitimidad, oposición, propaganda, clientelismo, corrupción,
conspiraciones, golpes, rebeliones, guerras civiles, reformas,
negociación y elecciones cuando el sistema político las permita.

### 7.4 Administración territorial

Provincias, municipios, aldeas, ciudades, fronteras, jurisdicciones
superpuestas, funcionarios, censos, registros, catastros, títulos,
impuestos, presupuestos, obras públicas y servicios. El control estatal
efectivo depende de infraestructura, recursos, legitimidad, información
y presencia.

------------------------------------------------------------------------

## 8. Leyes, seguridad y justicia

### 8.1 Delitos

Hurto, robo, asalto, fraude, estafa, falsificación, contrabando,
vandalismo, extorsión, secuestro, agresiones, homicidio, sabotaje,
corrupción, evasión fiscal y delitos contra instituciones.

Las motivaciones pueden ser necesidad, oportunidad, codicia, venganza,
ideología, conflictos o corrupción. Podrán existir delincuentes
individuales, bandas, piratas, redes de contrabando y crimen organizado.

### 8.2 Prevención y fuerzas de seguridad

Iluminación, diseño urbano, vigilancia, patrullas, guardias, murallas,
controles, seguridad de rutas, protección privada y comunitaria.
Guardias urbanos, rurales, fronterizos, reales, milicias, alguaciles,
investigadores y agentes especiales, según el reino.

Su eficacia depende de jurisdicción, financiación, autoridad,
equipamiento, formación, lealtad, reputación, corrupción y límites
legales.

### 8.3 Investigación y justicia

Denuncias, testigos, pruebas físicas y documentales, rastros,
sospechosos, interrogatorios, errores, pruebas falsas y casos sin
resolver. Tribunales locales, reales, religiosos, gremiales o mixtos;
jueces, acusadores, defensores y jurados/consejos cuando existan.

Procedimientos, mediación, acuerdos, juicios, apelaciones y sentencias
variables por reino.

### 8.4 Penas y prisiones

Multas, restitución, reparación, confiscación legal, servicio
comunitario o forzado según régimen, prisión, destierro y pena capital
donde exista. Cárceles con capacidad, costes, condiciones, guardias,
enfermedades, fugas, motines, abusos y rehabilitación según el sistema.

Derechos y garantías no serán uniformes. Existirán privilegios,
desigualdad, impunidad y errores judiciales. Antecedentes y reputación
afectarán empleo, crédito, relaciones y estatus.

### 8.5 Orden público

Protestas, huelgas, disturbios, revueltas, movimientos populares y
resistencia. Las respuestas gubernamentales tendrán consecuencias
políticas y sociales.

------------------------------------------------------------------------

## 9. Emergencias, desastres y protección civil

Desastres naturales y accidentes con causas físicas coherentes y
condicionadas por región, estación y medioambiente:

-   Terremotos y erupciones donde la geografía lo permita.
-   Tsunamis y maremotos en costas adecuadas.
-   Tormentas, huracanes y tornados donde proceda.
-   Inundaciones, sequías, olas de frío y calor.
-   Incendios forestales y urbanos.
-   Derrumbes y accidentes laborales.
-   Naufragios y accidentes de transporte.
-   Epidemias y plagas agrícolas.
-   Hambrunas.

Cada evento tendrá origen, intensidad, duración, propagación y daños a
personas, edificios, cultivos e infraestructuras. Prevención, alertas,
evacuaciones, rescates, refugios, reservas, ayuda, reconstrucción,
seguros y memoria histórica. No habrá eventos aleatorios sin causa.

------------------------------------------------------------------------

## 10. Guerra y conflictos internacionales

Tensiones, reclamaciones territoriales, causas de guerra, ultimátums,
alianzas, coaliciones, neutralidad, movilización, reclutamiento,
campañas, batallas, asedios y guerra naval.

Ejércitos y comandantes tendrán objetivos, recursos, moral, suministros,
información imperfecta y límites logísticos. Se contemplan ocupación,
resistencia, saqueos, prisioneros, rendiciones, tratados, reparaciones,
anexiones, independencia, fronteras cambiantes, reconstrucción,
veteranos, desplazamiento y refugiados.

Las guerras deben surgir de causas e intereses verificables, no de
decisiones arbitrarias del sistema.

------------------------------------------------------------------------

## 11. Diplomacia, espionaje e información

### 11.1 Diplomacia

Relaciones entre reinos, tratados, alianzas, pactos, embajadas,
negociaciones, comercio, reclamaciones, garantías, tributos, vasallaje,
mediación y conflictos.

### 11.2 Espionaje y contraespionaje

Espías, informantes, infiltración, secretos comerciales y militares,
sabotaje, robo de información, redes de inteligencia, contraespionaje y
desinformación. Los resultados dependerán de capacidades y riesgos.

### 11.3 Comunicación

Mensajeros, cartas, comerciantes, pregoneros, tablones, redes religiosas
y gremiales, correo estatal y señales. Noticias, rumores, propaganda y
censura se propagan con retrasos según distancia, rutas y tecnología.
Nadie conoce sucesos lejanos instantáneamente.

------------------------------------------------------------------------

## 12. Religión, cultura, idioma y vida social

### 12.1 Religión

Instituciones, jerarquías, templos, órdenes, peregrinaciones, rituales,
festividades, donaciones, tierras e influencia política. Reformas,
cismas, conversiones, tolerancia y persecución según leyes y culturas.
Las creencias personales pueden diferir de las instituciones.

### 12.2 Cultura e identidad

Lenguas y dialectos, tradiciones, vestimenta, arquitectura, gastronomía,
festividades, arte, música original/procedural, literatura e identidades
locales, regionales y religiosas. Difusión, mezcla cultural, minorías y
tensiones intergeneracionales.

### 12.3 Ocio y entretenimiento

Tabernas, festivales, ferias, juegos, deportes, espectáculos, música,
danza, narración, celebraciones, espacios públicos, amistades,
asociaciones y vida social. Acceso según recursos, edad, cultura, leyes
y tiempo libre. Impacto en bienestar, economía y cohesión.

------------------------------------------------------------------------

## 13. Educación, ciencia y tecnología

Escuelas, tutores, monasterios, academias, talleres, gremios,
bibliotecas y archivos. Alfabetización, traducción, formación
profesional, investigación empírica, experimentación y financiación.

La tecnología se desarrolla de forma independiente y asimétrica por
reino, institución y ámbito: militar, ingeniería, agricultura, medicina,
metalurgia, comercio, transporte, educación y arquitectura.

La difusión ocurre por comercio, migración, matrimonios, alianzas,
conquista, espionaje y contratación de especialistas. Adoptar tecnología
requiere comprenderla y disponer de recursos. El conocimiento puede
perderse si desaparecen instituciones y especialistas sin aprendices,
pero no si existen otras fuentes de transmisión.

No habrá árbol de puntos abstracto como única fuente de progreso: el
avance depende de especialistas, experiencia, materiales, instituciones,
financiación, necesidades e intercambio.

------------------------------------------------------------------------

## 14. Salud pública y medicina

Medicina acorde con la era y conocimientos disponibles: médicos,
curanderos, hospitales, monasterios, boticas, tratamientos y
limitaciones. Higiene, agua, saneamiento, nutrición, salud
maternoinfantil, heridas, epidemias y cuarentenas.

Vacunación o inoculación solo cuando el conocimiento histórico y
tecnológico del mundo lo permita. Sin anacronismos ni curas mágicas.

------------------------------------------------------------------------

## 15. Naturaleza, ecología y agricultura

### 15.1 Mundo natural

Geografía, biomas, clima, estaciones, agua, suelos, flora, fauna,
recursos minerales, desastres, equilibrio ecológico, deforestación,
contaminación, regeneración y erosión. Reglas naturales comunes con
variaciones regionales.

### 15.2 Agricultura y ganadería

Cultivos regionales y estacionales; granjas familiares, grandes
propiedades, campos comunales y tierras religiosas o estatales. Ganado y
productos animales. Cadenas alimentarias verificables, cocina, recetas,
almacenamiento, conservación, deterioro, mercados, hambre, escasez y
hambrunas.

Reservas públicas, importaciones, ayudas y controles temporales de
precios. Tecnología agrícola y conexión con clima, salud, población,
economía, ejército, transporte, gobierno y cultura.

### 15.3 Ecología ampliada

Hidrología, fertilidad del suelo, erosión, bosques, pesca,
biodiversidad, migración animal, enfermedades animales, contaminación,
sobreexplotación, regeneración y conservación.

------------------------------------------------------------------------

## 16. Generación del mundo, exploración e historia

### 16.1 Generación procedural

Continentes, islas, regiones, elevación, ríos, cuencas, costas, biomas,
clima, estaciones, suelos, recursos, fauna, flora, asentamientos,
culturas y reinos. La geografía debe ser coherente con recursos y
asentamientos. Semillas reproducibles para guardar y cargar mundos.

### 16.2 Exploración y cartografía

Áreas conocidas y desconocidas, mapas con precisión variable,
exploradores, expediciones, rutas, descubrimiento de recursos y lugares,
diarios y rumores. Exploración terrestre y marítima. El conocimiento
geográfico depende de la capacidad de cada sociedad.

### 16.3 Historia y eras

Cronología de personas, familias, negocios, instituciones,
asentamientos, reinos, tecnologías, guerras, tratados, desastres y
migraciones. Los reinos pueden avanzar, estancarse, adoptar, perder o
recuperar conocimientos. No existe una progresión lineal universal.

------------------------------------------------------------------------

## 17. Objetos, inventarios y trazabilidad

Todos los bienes importantes tendrán identificador, tipo, cantidad,
calidad, condición, propietario, ubicación y procedencia. Fabricación,
consumo, transferencia, pérdida, deterioro, reparación, reciclaje y
destrucción quedarán registrados.

Inventarios personales, familiares, comerciales, institucionales,
militares y públicos. Los bienes podrán heredarse, prestarse,
almacenarse, venderse, robarse o recuperarse. La propiedad y las
consecuencias legales dependerán de las leyes del reino.

------------------------------------------------------------------------

## 18. Modos de juego y agencia del jugador

Modos posibles: gobernante, administrador, fundador/constructor,
observador/sandbox y escenarios con objetivos opcionales. Las facultades
y límites dependen del rol. Dificultad configurable sin romper la
causalidad interna. El jugador podrá observar sociedades autónomas.

La interfaz final se decidirá durante el diseño de experiencia de
usuario, no antes de validar los sistemas principales.

------------------------------------------------------------------------

## 19. Arquitectura técnica y rendimiento en Godot

### 19.1 Separación de simulación y representación

Los datos de ciudadanos, edificios, objetos y sistemas no dependerán de
que exista un modelo 3D cargado. Las entidades tendrán IDs persistentes.
La representación 3D consultará los datos y podrá descargarse a
distancia sin borrar la entidad.

### 19.2 Núcleo y módulos

Núcleo coordinador del mundo, tiempo, eventos y sistemas; evitar un
único script monolítico. Módulos separados para población, economía,
gobierno, sociedad, construcción, ambiente, transporte, historia,
seguridad, guerra y IA.

### 19.3 Tiempo

Reloj interno independiente de FPS, pausa y velocidades sugeridas ×1,
×2, ×5 y ×10. Calendario propio con días, meses, estaciones y años.

Frecuencias orientativas: - Continuo: movimiento y presentación
visual. - Por hora: actividades y necesidades. - Diario: consumo,
producción y trabajo. - Semanal: mercados, salarios y balances. -
Mensual: impuestos, presupuestos y estadísticas. - Anual: envejecimiento
y balances demográficos.

### 19.4 Simulación por niveles

-   Cerca del jugador: simulación individual y visual detallada.
-   Distancia media: decisiones y actividades simplificadas o agrupadas.
-   Lejos: cálculos regionales y estadísticas agregadas.

Al volver a una zona, sus habitantes y entidades conservan continuidad e
historial.

### 19.5 Android

Presupuestos de CPU y memoria; LOD; materiales compartidos; polígonos
moderados; carga y descarga por distancia; limitar actualizaciones
visuales; separar frecuencia de simulación y FPS. Priorizar estabilidad
y escalabilidad.

### 19.6 Guardado y carga

Guardado coordinado por bloques: mundo, ciudadanos/familias,
propiedades/inventarios, economía/transacciones, gobiernos/leyes,
ciudades/edificios e historia. Autoguardado, copias de seguridad,
versiones de partidas y validación de integridad.

### 19.7 Registro y depuración

Historial de eventos, IDs únicos, trazabilidad de transacciones,
explicación causal de cambios, informes de incidentes, mapas temáticos,
filtros y búsqueda de entidades. Pruebas de invariantes económicos y
sociales.

------------------------------------------------------------------------

## 20. Estructura de carpetas propuesta

``` text
SociedadViva/
├── project.godot
├── scenes/
│   ├── world_3d/
│   ├── buildings/
│   ├── citizens/
│   ├── animals/
│   └── interface/
├── scripts/
│   ├── core/
│   ├── population/
│   ├── economy/
│   ├── government/
│   ├── society/
│   ├── military/
│   ├── construction/
│   ├── environment/
│   ├── transport/
│   ├── history/
│   ├── security/
│   ├── diplomacy/
│   └── artificial_intelligence/
├── data/
│   ├── citizens/
│   ├── buildings/
│   ├── items/
│   ├── kingdoms/
│   └── resources/
└── assets/
    ├── models/
    ├── textures/
    ├── animations/
    └── audio/
```

Esta estructura es una propuesta orientativa; se ajustará según las
necesidades reales. No crear todos los archivos de golpe.

------------------------------------------------------------------------

## 21. Orden recomendado de implementación

1.  **Fundamentos técnicos:** administrador del juego, mundo, reloj,
    datos, IDs y guardado.
2.  **Primer ciudadano funcional:** creación, identidad, datos
    persistentes y representación 3D.
3.  **Necesidades e IA:** hambre, descanso, trabajo, decisiones y
    movimiento.
4.  **Familias y viviendas:** relaciones, habitaciones, pertenencias y
    convivencia.
5.  **Economía inicial:** inventarios, recursos, producción, intercambio
    y dinero.
6.  **Asentamiento autónomo:** construcción, comercios, agricultura y
    transporte.
7.  **Instituciones:** gobierno, leyes, justicia, cultura, diplomacia y
    ejército.
8.  **Sistemas avanzados:** comercio internacional, banca,
    investigación, seguridad, emergencias y guerras.
9.  **Mundo e historia:** generación procedural, exploración, eras y
    evolución de civilizaciones.
10. **Optimización y contenido:** rendimiento Android, interfaz,
    herramientas, escenarios y expansión.

Implementar y probar cada fase antes de ampliar la siguiente. No
confundir sistemas diseñados con sistemas ya implementados.

------------------------------------------------------------------------

## 22. Estado conocido del prototipo

Entorno conocido: Godot 4.7.2 en Android. El usuario decidió abrir y
trabajar con el editor Godot y dejar de usar Termux:X11.

Proyecto conocido en `SociedadViva/`. El prototipo visual previo
mostraba terreno, caminos, árboles y tres casas. La escena principal
conocida era `scenes/world_3d/world_3d.tscn`, con un controlador en
`scripts/world_3d/world_controller.gd` y una escena de casa en
`scenes/buildings/house.tscn`.

Este estado es una referencia histórica de la conversación, no una
verificación del contenido actual de los archivos. Antes de modificar
código, inspeccionar el proyecto real y hacer copias de seguridad.

------------------------------------------------------------------------

## 23. Regla de continuidad del proyecto

Cuando se retome SociedadViva 3D: - Consultar esta hoja de ruta antes de
pedir al usuario que repita decisiones. - Incorporar mejoras coherentes
directamente y explicar brevemente las decisiones. - No preguntar por
cada detalle menor; tomar la decisión recomendada. - Diseñar los
sistemas como partes conectadas, no como minijuegos aislados. -
Actualizar este documento cuando se aprueben cambios importantes. -
Indicar claramente qué está diseñado, qué está en desarrollo y qué
funciona realmente en Godot. - No afirmar que un archivo o código se
modificó si no se hizo.

**Este documento es la referencia externa de continuidad de SociedadViva
3D.**
