using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TankBuddy.Models;

namespace TankBuddy.DataAccess
{
    public class FishProvider
    {
        private DatabaseConnection _db;

        public FishProvider(DatabaseConnection db)
        {
            _db = db;
        }

        public bool AddFish(Fish fish)
        {
            using (var db = _db.GetConnection())
            {
                string sql = "INSERT INTO Fish VALUES (@name, @sex, @tankId, @speciesId)";
                return db.Execute(sql, fish) == 1;
            }
        }

        public bool RemoveFish(int id)
        {
            using (var db = _db.GetConnection())
            {
                string sql = "DELETE FROM Fish WHERE Id = @id";
                return db.Execute(sql, new { id }) == 1;
            }
        }
    }
}
