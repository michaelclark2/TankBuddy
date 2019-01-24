using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace TankBuddy
{
    public class DatabaseConnection
    {
        private string _connectionString;

        public DatabaseConnection(IConfiguration configuration, string sectionName)
        {
            _connectionString = configuration.GetSection(sectionName).Value;    
        }

        public SqlConnection GetConnection()
        {
            return new SqlConnection(_connectionString);
        }
    }
}
