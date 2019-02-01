using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TankBuddy.Models;

namespace TankBuddy.DataAccess
{
    public class SpeciesProvider
    {
        private DatabaseConnection _db;

        public SpeciesProvider(DatabaseConnection db)
        {
            _db = db;
        }

        public List<Species> SearchSpecies(string q)
        {
            using (var db = _db.GetConnection())
            {
                string sql = "SELECT * FROM Fish WHERE CommonName LIKE ('%' + @q + '%') OR ScientificName LIKE ('%' + @q + '%')";
                return db.Query<Species>(sql, new { q }).ToList();
            }
        }
    }
}
