
# Control de Densidad de Vehículos / Vehicle Density Control

## Descripción / Description

**Español:**
Este script permite ajustar la densidad de vehículos en un servidor de FiveM. Los jugadores pueden usar el comando `/setdensity [valor]` para establecer el nivel de tráfico vehicular, donde el valor debe estar entre `0.0` (sin vehículos) y `1.0` (densidad máxima predeterminada).

**English:**
This script allows adjusting the vehicle density in a FiveM server. Players can use the `/setdensity [value]` command to set the traffic density level, where the value should be between `0.0` (no vehicles) and `1.0` (default maximum density).

## Instalación / Installation

1. **Descargar y Extraer / Download and Extract:**
   - Descarga el archivo `vehicle_density.lua` y colócalo en una carpeta nueva dentro de tu directorio `resources` de FiveM. Por ejemplo: `resources/[your_scripts]/vehicle_density/`.

   **Download the `vehicle_density.lua` file and place it in a new folder within your FiveM `resources` directory. For example: `resources/[your_scripts]/vehicle_density/`.**

2. **Crear el Archivo de Manifesto / Create the Manifest File:**
   - En la misma carpeta, crea un archivo `__resource.lua` (o `fxmanifest.lua` si estás usando una versión más reciente de FiveM) con el siguiente contenido:

   **In the same folder, create a `__resource.lua` (or `fxmanifest.lua` if you are using a newer version of FiveM) with the following content:**

   ```lua
   resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

   author 'Dark'
   description 'Script para controlar la densidad de vehículos en el servidor. / Script to control vehicle density in the server.'
   version '1.0'

   client_script 'vehicle_density.lua'
   ```

3. **Configurar el Servidor / Configure the Server:**
   - Añade `start vehicle_density` en tu archivo `server.cfg` para cargar el script al iniciar el servidor.

   **Add `start vehicle_density` to your `server.cfg` file to load the script when the server starts.**

## Uso / Usage

**Español:**
- Usa el comando `/setdensity [valor]` para ajustar la densidad de vehículos. 
  - `0.0` = Sin vehículos
  - `1.0` = Densidad máxima predeterminada

**English:**
- Use the command `/setdensity [value]` to adjust the vehicle density.
  - `0.0` = No vehicles
  - `1.0` = Default maximum density

## Contribución / Contribution

**Español:**
¡Si deseas contribuir al desarrollo de este script, siéntete libre de hacer un fork y enviar un pull request!

**English:**
If you want to contribute to the development of this script, feel free to fork and submit a pull request!

## Contacto / Contact

**Español:**
Para cualquier consulta, puedes contactarme en discord "darki195".

**English:**
For any inquiries, you can contact me at discord "darki195".
