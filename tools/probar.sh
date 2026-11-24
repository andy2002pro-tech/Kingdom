#!/data/data/com.termux/files/usr/bin/bash

PROYECTO="$HOME/storage/shared/SociedadViva"
ERRORES=0

cd "$PROYECTO" || {
    echo "ERROR: No se encuentra SociedadViva."
    exit 1
}

comprobar() {
    if [ -f "$1" ]; then
        echo "[OK] $2"
    else
        echo "[ERROR] $2 ($1)"
        ERRORES=$((ERRORES + 1))
    fi
}

echo "========================================"
echo "       PRUEBAS DE SOCIEDADVIVA 3D"
echo "========================================"

echo
echo "1. ARCHIVOS PRINCIPALES"

comprobar project.godot "Configuracion Godot"
comprobar scenes/world_3d/world_3d.tscn "Escena principal 3D"
comprobar scripts/world_3d/world_controller.gd "Controlador del mundo"
comprobar scripts/visuals/citizen_visual.gd "Visual de ciudadanos"
comprobar scenes/buildings/house.tscn "Escena de vivienda"
comprobar scripts/buildings/house.gd "Script de vivienda"
comprobar scripts/models/citizen.gd "Modelo de ciudadano"
comprobar scripts/models/faction.gd "Modelo de faccion"
comprobar scripts/models/institution.gd "Modelo de institucion"
comprobar scripts/models/political_position.gd "Modelo de posicion politica"

echo
echo "2. GIT"

if git diff --check && git diff --cached --check; then
    echo "[OK] No hay errores de espacios."
else
    echo "[ERROR] Problemas en diferencias Git."
    ERRORES=$((ERRORES + 1))
fi

echo
echo "3. SCRIPTS"

TOTAL=$(find scripts -type f -name '*.gd' | wc -l)
echo "Scripts encontrados: $TOTAL"

if [ "$TOTAL" -eq 0 ]; then
    echo "[ERROR] No hay scripts."
    ERRORES=$((ERRORES + 1))
else
    echo "[OK] Scripts encontrados."
fi

echo
echo "4. MOTOR GODOT"

GODOT=""

if command -v godot >/dev/null 2>&1; then
    GODOT="godot"
elif command -v godot4 >/dev/null 2>&1; then
    GODOT="godot4"
fi

if [ -n "$GODOT" ]; then
    "$GODOT" --version
    echo
    echo "Comprobando importacion y carga del editor..."
    if "$GODOT" --headless --path "$PROYECTO" --editor --quit; then
        echo "[OK] Godot termino la comprobacion."
    else
        echo "[ERROR] Godot detecto un problema."
        ERRORES=$((ERRORES + 1))
    fi
else
    echo "[AVISO] Godot no esta disponible."
fi

echo
echo "========================================"

if [ "$ERRORES" -eq 0 ]; then
    echo "RESULTADO: PRUEBAS SUPERADAS"
else
    echo "RESULTADO: $ERRORES PROBLEMA(S)"
fi

echo "========================================"

exit "$ERRORES"
