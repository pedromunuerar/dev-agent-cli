#!/usr/bin/env bash
set -e

echo "🤖 Instalando Dev-Agent CLI..."

INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

# Copiar ejecutables
cp bin/dev-agent-init "$INSTALL_DIR/"
cp bin/dev-agent-prompt "$INSTALL_DIR/"
cp bin/dev-agent-context "$INSTALL_DIR/"

# Asegurar permisos de ejecución
chmod +x "$INSTALL_DIR"/dev-agent-*

echo "===================================================="
echo "✅ ¡Instalación completada con éxito!"
echo "Asegúrate de que $INSTALL_DIR esté en tu PATH."
echo "Puedes comprobarlo añadiendo esto a tu .bashrc/.zshrc si no funciona:"
echo "export PATH=\"\$HOME/.local/bin:\$PATH\""
echo "===================================================="
