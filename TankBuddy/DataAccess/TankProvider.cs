using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TankBuddy.Models;

namespace TankBuddy.DataAccess
{
    public class TankProvider
    {
        private DatabaseConnection _db;

        public TankProvider(DatabaseConnection db)
        {
            _db = db;
        }

        public Tank AddTank(Tank tank)
        {
            using (var db = _db.GetConnection())
            {
                string sql = "INSERT INTO Tank OUTPUT INSERTED.* VALUES (@name, @userId, @length, @width, @depth, @pH, @temp, @dH)";
                return db.QueryFirstOrDefault<Tank>(sql, tank);
            }
        }

        public List<Tank> GetTanksByUid(string uid)
        {
            
            using (var db = _db.GetConnection())
            {
                string sql = "SELECT t.* FROM Tank t JOIN [User] u ON u.Id = t.UserId WHERE u.Uid = @uid";
                return db.Query<Tank>(sql, new { uid }).ToList();
            }
            
        }
    }
}
