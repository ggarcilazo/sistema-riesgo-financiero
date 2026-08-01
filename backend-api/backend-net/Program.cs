using Microsoft.Data.SqlClient;

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

// Cadena de conexión directa a tu SQL Server Express local
string connectionString = "Server=LAP-GIOVANNI-GA;Database=BancoRiesgos;Trusted_Connection=True;TrustServerCertificate=True;";

// Endpoint REST para consultar un cliente por su ID: /api/creditos/100002
app.MapGet("/api/creditos/{id}", (int id) => {
    using (var connection = new SqlConnection(connectionString)) {
        connection.Open();
        var command = new SqlCommand("SELECT * FROM SolicitudesCredito WHERE ClienteID = @id", connection);
        command.Parameters.AddWithValue("@id", id);
        
        using (var reader = command.ExecuteReader()) {
            if (reader.Read()) {
                return Results.Ok(new {
                    ClienteID = reader["ClienteID"],
                    Ingresos = reader["IngresosMensuales"],
                    Edad = reader["Edad"],
                    Monto = reader["MontoSolicitado"],
                    Estado = reader["EstadoSAP"]
                });
            }
        }
    }
    return Results.NotFound($"El cliente con ID {id} no se encuentra registrado en el sistema de riesgos.");
});

app.Run();
