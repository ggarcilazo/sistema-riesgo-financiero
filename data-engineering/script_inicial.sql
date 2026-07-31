-- 1. Crear la base de datos para el control de riesgos bancarios
CREATE DATABASE BancoRiesgos;
GO

USE BancoRiesgos;
GO

-- 2. Crear la tabla que recibirá los datos del "ERP / SAP"
CREATE TABLE SolicitudesCredito (
    ClienteID INT PRIMARY KEY,
    IngresosMensuales NUMERIC(18,2),
    Edad INT,
    MontoSolicitado NUMERIC(18,2),
    TasaMorosidadProbable NUMERIC(5,2) DEFAULT 0.00, -- Esto lo llenará la IA de tu compañero
    EstadoSAP VARCHAR(50) DEFAULT 'Pendiente',       -- Control de procesos (Soporte SAP)
    TicketJira VARCHAR(20) NULL                      -- Control de incidencias (Mesa de ayuda)
);
GO

-- 3. Insertar un cliente de prueba para verificar que funcione
INSERT INTO SolicitudesCredito (ClienteID, IngresosMensuales, Edad, MontoSolicitado)
VALUES (100001, 4500.00, 32, 15000.00);

-- 4. Verificar la tabla
SELECT * FROM SolicitudesCredito;