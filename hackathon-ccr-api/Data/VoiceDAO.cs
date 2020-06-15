using Dapper;
using MySql.Data.MySqlClient;
using System.Linq;

namespace hackathon.ccr.Data
{
    public class VoiceDAO
    {
        public static string connectionString = Settings.MysqlConnectionString;

        public static int Save(int phone, string text)
        {
            var query = @"INSERT INTO text_voice (phone, text)
                        SELECT * FROM (SELECT @phone, @text) AS tmp
                        WHERE NOT EXISTS (
                            SELECT id FROM text_voice WHERE date_send IS NULL And phone = @phone
                        ) LIMIT 1;";

            using MySqlConnection conexaoBD = new MySqlConnection(connectionString);
            return conexaoBD.ExecuteScalar<int>(query, param: new { phone, text });
        }

        public static string Query(int phone)
        {
            var query = @"SELECT text FROM text_voice
                        WHERE phone = @phone
                        AND date_send IS NULL
                        LIMIT 1;";

            using MySqlConnection conexaoBD = new MySqlConnection(connectionString);
            var text = conexaoBD.Query<string>(query, param: new { phone }).SingleOrDefault();

            Clean(phone);

            return text;
        }

        public static int Clean(int phone)
        {
            var query = @"UPDATE text_voice SET date_send = CURRENT_TIMESTAMP
                        WHERE phone = @phone
                        AND date_send IS NULL;";

            using MySqlConnection conexaoBD = new MySqlConnection(connectionString);
            return conexaoBD.ExecuteScalar<int>(query, param: new { phone });
        }
    }
}