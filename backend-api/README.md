# 📁 Módulo de Arquitectura Backend Híbrida y Aseguramiento de Calidad (QA)

Este módulo contiene el diseño de microservicios distribuidos desarrollados bajo un enfoque Multi-Stack (Java + .NET Core) para garantizar alta disponibilidad y desacoplamiento, además de la capa de pruebas funcionales automatizadas.

## 🚀 Componentes Técnicos

*   **`backend-java/riesgos/`**: Microservicio desarrollado en **Spring Boot 3.x** y Maven. Utiliza `JdbcTemplate` para interactuar de forma segura con la base de datos local y proveer un endpoint tipo `PUT` (`/api/riesgos/actualizar`) destinado a recibir las evaluaciones remotas del modelo de Machine Learning.
*   **`backend-net/`**: Microservicio API REST ligero desarrollado en **.NET Core 8.0** y C#. Utiliza `Microsoft.Data.SqlClient` para mapear lecturas de alta velocidad y exponer un endpoint tipo `GET` (`/api/creditos/{id}`) que alimenta de forma eficiente reportes ejecutivos en Power BI.
*   **`evaluacion_riesgos.feature`**: Archivo de especificación de pruebas funcionales basado en el comportamiento (BDD) redactado bajo la sintaxis **Gherkin**. Modela el flujo transaccional fin a fin desde la ingesta de SAP hasta el consumo en la nube.

## 💻 Configuración de Microservicios

1. **Backend Java**:
   * Asegúrese de tener configurado el `JAVA_HOME` apuntando a JDK 17 o superior [4.1].
   * Ingrese a la ruta del proyecto y ejecute en su terminal: `./mvnw spring-boot:run` para levantar el servidor en el puerto `8081`.
2. **Backend .NET**:
   * Asegúrese de contar con el SDK de .NET 8 instalado.
   * Ejecute en su consola: `dotnet run` para activar el endpoint de consultas en el puerto local.
