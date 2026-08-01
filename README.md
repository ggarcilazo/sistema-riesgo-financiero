# 🏦 Sistema Integral de Ingesta, Scoring de Riesgo Crediticio e Incidentes ITSM

Este repositorio contiene un ecosistema tecnológico de nivel empresarial diseñado bajo una arquitectura híbrida y multi-cloud (AWS, Azure, GCP). El sistema automatiza la extracción de datos financieros, procesa la información mediante microservicios, ejecuta modelos predictivos de Inteligencia Artificial y gestiona las alertas críticas a través de una mesa de ayuda automatizada.

---

## 🏗️ 1. Arquitectura del Sistema y Flujo de Datos

<img width="1024" height="1536" alt="Arquitectura" src="https://github.com/user-attachments/assets/dd88858c-b903-4224-b7af-910171ba4357" />


---

## 🛠️ 2. Estructura del Proyecto y Apartados Técnicos

El portafolio se encuentra organizado estratégicamente en tres grandes módulos de ingeniería:

### 📁 Módulo A: Ingeniería de Datos y Automatización (`/data-engineering`)
Módulo encargado de la ingesta, persistencia de datos relacionales y la orquestación de alertas hacia la mesa de ayuda corporativa.
*   **Automatización RPA:** Flujo portátil diseñado en **Power Automate Desktop** que extrae reportes de créditos (Simulación SAP ERP) mediante rutas dinámicas.
*   **Base de Datos Relacional:** Scripts de creación e inicialización optimizados para **SQL Server Express** (`BancoRiesgos`).
*   **Integración ITSM (Jira):** Automatización de alertas en tiempo real conectada a la API REST de **Jira Service Management** mediante tokens de seguridad, generando incidentes automáticos ante clientes con riesgo crítico.
*   **Evidencias del Módulo:** 
    *   [Ver Script del Flujo Portable](./data-engineering/flujo_power_automate.txt)
    *   [Ver Captura de Evidencia en Jira](./data-engineering/evidencia_jira.png)

### 📁 Módulo B: Arquitectura Backend Híbrida (`/backend-api`)
Implementación de microservicios distribuidos utilizando tecnologías Multi-Stack de alto rendimiento para el sector banca y seguros.
*   **Microservicio de IA y Actualización (Java):** Desarrollado en **Spring Boot 3.x** y conectado a SQL Server. Sirve como el puente receptor seguro para que el modelo de Machine Learning registre las tasas de morosidad calculadas.
*   **Microservicio de Consulta (.NET Core):** API REST ligera en **C#** optimizada para proveer lecturas de alta velocidad y alimentar reportes de Inteligencia de Negocios en **Power BI**.
*   **Calidad de Software (QA):** Escenarios de prueba basados en el comportamiento (BDD) redactados en formato **Gherkin** para la validación automática de flujos transaccionales.

### 📁 Módulo C: Ciencia de Datos y Machine Learning (`/data-science`)
Capa analítica e inteligente del ecosistema ejecutada de forma serverless.
*   **Análisis Exploratorio (EDA):** Limpieza, ingeniería de variables y tratamiento de valores nulos mediante Pandas, NumPy y Scikit-learn.
*   **Modelo Predictivo (Scoring Crediticio):** Entrenamiento de un algoritmo avanzado **XGBoost** utilizando datasets reales de riesgo financiero extraídos de Kaggle. El modelo calcula la Probabilidad de Incumplimiento (PD) y consume de forma remota el backend mediante túneles seguros de **Ngrok**.

---

## 📈 3. Propuesta Económica de Preventa (FinOps)

Para la sustentación ejecutiva del proyecto ante comités directivos (*C-Level*), se estructuró un análisis financiero de costos mensuales simulados para una migración y modernización Multi-Cloud:

| Proveedor Cloud | Servicio Solicitado | Especificación Técnica | Costo Mensual Estimado |
| :--- | :--- | :--- | :--- |
| **Microsoft Azure** | Azure Kubernetes (AKS) | Clúster de 3 nodos (8GB RAM / 4 vCPU) | \$150.00 USD |
| **Google Cloud** | BigQuery / Cloud Storage | 1 TB de almacenamiento + consultas | \$45.00 USD |
| **Amazon Web Services**| Amazon Bedrock / SageMaker| Procesamiento de tokens e IA predictiva | \$120.00 USD |
| **Atlassian** | Jira Service Management | Plan Free (Hasta 3 agentes de soporte) | \$0.00 USD |
| **TOTAL ESTIMADO** | **Infraestructura Mensual**| **Solución Integral Integrada** | **\$315.00 USD** |

---
## 👥 4. Colaboradores del Proyecto
*   **Giovanni Joaquín Garcilazo Lopez** (`ggarcilazo`) - Ingeniero de Datos, Backend Multi-Stack y Automatización RPA.
*   **Hector Jose Caballero Babilonia** (`Yunibasu1`) - Científico de Datos, Ingeniero de Machine Learning e Inteligencia Artificial.
