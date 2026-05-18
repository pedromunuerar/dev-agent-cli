# 🤖 Dev-Agent CLI

Un entorno ultra-ligero y local para transformar cualquier chat de IA (ChatGPT, Claude, Gemini, etc.) en un agente de desarrollo por línea de comandos. Diseñado para optimizar al máximo el ciclo de creación/edición de código sin pagar APIs y manteniendo control total mediante Git.

## ✨ Características
- 💸 **Ahorro masivo de tokens**: El prompt del sistema está optimizado para consumir lo mínimo.
- 🛡️ **Entorno de pruebas seguro**: Creación automática de ramas temporales de Git con `diff` interactivo antes de consolidar cambios.
- 📋 **Portapapeles automático**: Copia los prompts y contextos al portapapeles nativo del sistema de forma automática.
- 📂 **Inyección selectiva**: Envía el contenido de archivos o directorios específicos solo cuando la IA lo solicite.

## 🚀 Instalación rápida

Clona este repositorio e instala los binarios en tu carpeta local de usuario:

```bash
git clone https://github.com
cd dev-agent-cli
./install.sh
```

*Nota para usuarios de Linux: Si experimentas problemas con el portapapeles, instala la dependencia nativa ejecutando `sudo apt install xclip`.*

## 🛠️ Flujo de Trabajo diario

### 1. Inicializar el proyecto (Una sola vez)
En la raíz de tu nuevo proyecto de programación, ejecuta:
```bash
dev-agent-init
```
Te preguntará las tecnologías del proyecto y generará un archivo oculto `.agent-context.json` con la estructura de carpetas (ignorando automáticamente entornos virtuales, `.env` y temporales).

### 2. Solicitar una tarea
Cuando quieras crear o modificar código, corre:
```bash
dev-agent-prompt
```
Escribe tu petición (ej: *Crea un script de Docker para producción*). El script generará el prompt estructurado y **lo copiará automáticamente a tu portapapeles**. Ve a tu chat de IA y pégalo.

### 3. Inyectar contexto de archivos (Si la IA lo requiere)
Si la IA te solicita ver archivos existentes para comprender mejor la lógica, ejecuta en otra pestaña de tu terminal:
```bash
dev-agent-context ruta/al/archivo.js ruta/a/carpeta/
```
El contenido formateado se copiará a tu portapapeles. Pégalo de vuelta en el chat.

### 4. Revisión y Fusión Segura
Una vez que la IA te devuelva el bloque único de código Bash ejecutándolo con `cat << 'EOF'`:
1. Vuelve a la terminal del paso 2 (que estará esperando en modo seguro en la rama `agente-cambios`).
2. Pega el código Bash de la IA y presiona `ENTER`.
3. Escribe `exit` y presiona `ENTER`.
4. El sistema te enseñará a color el `git diff` exacto de las modificaciones.
5. Elige `y` para fusionar los cambios en tu rama principal o `n` para descartarlos por completo si no te convencen.
