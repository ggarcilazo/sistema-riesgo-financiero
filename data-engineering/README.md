# 📁 Módulo de Ingeniería de Datos y Automatización RPA

Este subdirectorio contiene la lógica de ingesta automatizada, el diseño de la base de datos relacional y la integración directa con la mesa de ayuda de incidencias (ITSM).

## 🚀 Componentes Técnicos del Módulo

1. **`script_inicial.sql`**: Script DDL optimizado para **SQL Server Express** que genera la tabla `SolicitudesCredito` con restricciones de clave primaria y estados transaccionales.
2. **`Reporte_SAP_Creditos.xlsx`**: Plantilla de datos estructurados que simula la extracción manual de solicitudes pendientes desde un módulo SAP ERP (MM/FI).
3. **`flujo_power_automate.txt`**: Código fuente plano (RobinScript) de la automatización en **Power Automate Desktop**. Realiza un bucle *For Each*, efectúa inyecciones masivas en SQL y consume la API de Jira de forma paralela.

---

## 📸 Evidencias Visuales del Flujo Automatizado

### 🤖 1. Diseño del Flujo en Power Automate Desktop (Parte Inicial)
*Extracción automatizada desde la plantilla de simulación SAP ERP y lectura de registros masivos.*

<img width="2879" height="1799" alt="Captura de pantalla 2026-07-31 163134" src="https://github.com/user-attachments/assets/52b49b0d-f303-4b70-b635-a680fe5ad478" />

### 🤖 2. Inserción SQL e Integración de API de Jira (Parte Final)
*Bucle dinámico para la inyección transaccional en SQL Server y llamada HTTP POST con control de cabeceras de seguridad.*

<img width="2879" height="1704" alt="Captura de pantalla 2026-08-01 123021" src="https://github.com/user-attachments/assets/22408c40-bcd5-4610-8ddb-751f56519585" />

### 🎫 3. Evidencia de Incidentes Creados en Jira Service Management
*Validación en la nube de Atlassian del ingreso automático de alertas críticas con código HTTP 201 en la cola de soporte TI.*

<img width="2879" height="1115" alt="evidencia_jira3" src="https://github.com/user-attachments/assets/19bb6c50-6524-43f5-bceb-04223292cf1e" />

---

## 💻 Instrucciones de Replicación Local

1. **Base de Datos**: Abra SQL Server Management Studio (SSMS) y ejecute el archivo `script_inicial.sql` para levantar la estructura.
2. **Automatización**: 
   * Cree un flujo nuevo en Power Automate Desktop.
   * Abre el archivo `flujo_power_automate.txt`, copia todo su contenido de texto plano (`Ctrl + C`) y péguelo directamente en el lienzo central de Power Automate (`Ctrl + V`). Las acciones visuales se reconstruirán automáticamente.
   * Configure su variable de entrada `RutaProyecto` apuntando a la carpeta local donde descargó el Excel.
   * En la acción de servicio web, actualice su correo electrónico y su API Token de Jira en los encabezados personalizados.
