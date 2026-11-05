using MySqlConnector;

var dbHost = Environment.GetEnvironmentVariable("DB_HOST");
var dbPort = Environment.GetEnvironmentVariable("DB_PORT");
var dbName = Environment.GetEnvironmentVariable("DB_NAME");
var dbUser = Environment.GetEnvironmentVariable("DB_USER");
var dbPassword = Environment.GetEnvironmentVariable("DB_PASSWORD");

var connectionString =
    $"Server={dbHost};Port={dbPort};Database={dbName};User ID={dbUser};Password={dbPassword};";

Console.WriteLine("Connecting to MySQL...");

try
{
    using var connection = new MySqlConnection(connectionString);

    await connection.OpenAsync();

    Console.WriteLine("✅ Connected to MySQL!");

    var command = new MySqlCommand("SELECT * FROM users;", connection);

    using var reader = await command.ExecuteReaderAsync();

    Console.WriteLine("Users:");

    while (await reader.ReadAsync())
    {
        Console.WriteLine(
            $"{reader["id"]} - {reader["name"]} - {reader["email"]}"
        );
    }
}
catch (Exception ex)
{
    Console.WriteLine($"❌ Connection failed: {ex.Message}");
}

while (true)
{
    await Task.Delay(1000);
}