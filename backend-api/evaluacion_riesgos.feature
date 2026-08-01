# language: es
Característica: Validación automática de Scoring de Riesgo Crediticio

  Escenario: Un cliente con altos ingresos es evaluado exitosamente por la Inteligencia Artificial
    Dado que el flujo de Power Automate cargó al ClienteID 100002 desde SAP a la base de datos
    Y su EstadoSAP inicial se encuentra registrado como 'Pendiente'
    Cuando el microservicio de Java Spring Boot recibe la evaluación de IA con una tasa de morosidad de 5.50
    Entonces la base de datos debe actualizar el registro del ClienteID 100002 con la nueva tasa
    Y el campo EstadoSAP debe cambiar automáticamente al valor 'Evaluado por IA'
    Y la API REST de .NET Core debe responder con un código de estado 200 OK al ser consultada por Power BI

