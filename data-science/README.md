# 📁 Módulo de Ciencia de Datos e Inteligencia Artificial Predictiva

Este subdirectorio almacena el núcleo inteligente del ecosistema financiero, enfocado en el modelado estadístico de riesgo predictivo mediante arquitecturas ágiles en la nube.

## 🚀 Componentes Técnicos

*   **`modelo_scoring_riesgo.ipynb`**: Cuaderno de **Google Colab** en Python que documenta la ingeniería de características (Feature Engineering), limpieza de datos masivos y el entrenamiento del clasificador.
*   **Algoritmo Predictivo**: Implementación de **XGBoost** entrenado con datasets reales de riesgo financiero de Kaggle (*Home Credit Default Risk*) para predecir la probabilidad de incumplimiento de pago (PD).
*   **Integración Remota**: Script automatizado utilizando la librería `requests` de Python que se comunica por internet con las APIs locales del banco mediante túneles seguros cifrados provistos por **Ngrok**.

## 💻 Ejecución del Modelo

1. Suba el archivo `modelo_scoring_riesgo.ipynb` a su espacio de trabajo en Google Colab.
2. Descargue el archivo de entrenamiento de la competencia de Kaggle y cárguelo en el entorno virtual de Google.
3. Ejecute las celdas secuencialmente para limpiar nulos y entrenar el modelo XGBoost.
4. Para la celda de inyección remota, solicite la URL activa de Ngrok generada por el Ingeniero de Datos, reemplácela en la variable `url_puente` y presione ejecutar para actualizar el SQL Server en tiempo real.
