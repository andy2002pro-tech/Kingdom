#!/data/data/com.termux/files/usr/bin/bash

PROYECTO="$HOME/storage/shared/SociedadViva"

if [ ! -d "$PROYECTO/.git" ]; then
    echo "ERROR: No se encuentra SociedadViva."
    exit 1
fi

cd "$PROYECTO" || exit 1

echo "========================================"
echo "          SOCIEDADVIVA 3D"
echo "========================================"

echo
echo "RAMA:"
git branch --show-current

echo
echo "ULTIMO COMMIT:"
git log -1 --oneline

echo
echo "SINCRONIZACION:"
git status -sb

echo
echo "CAMBIOS:"
git status --short

echo
echo "RESUMEN:"
git status --short | awk '
{
    if (substr($0,1,2) == "??") nuevos++
    else modificados++
}
END {
    print "Modificados/preparados:", modificados
    print "Nuevos:", nuevos
}'

echo
echo "RESPALDOS EXTERNOS:"
if [ -d "$HOME/SociedadViva_backups" ]; then
    find "$HOME/SociedadViva_backups" -maxdepth 1 -name '*.tar.gz' | wc -l
else
    echo "No hay carpeta de respaldos."
fi

echo
echo "========================================"
