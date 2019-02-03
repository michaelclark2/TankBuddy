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
                string tankSql = "SELECT t.*, u.Metric FROM Tank t JOIN [User] u ON u.Id = t.UserId WHERE u.Uid = @uid";
                var tanks = db.Query<Tank>(tankSql, new { uid }).ToList();

                foreach (var tank in tanks)
                {
                    string fishSql = "SELECT * FROM TankBuddy.dbo.Fish t JOIN Species.dbo.Fish s ON t.SpeciesId = s.Id WHERE TankId = @id";
                    tank.Fish = db.Query<Fish>(fishSql, new { tank.Id }).ToList();

                    string filterSql = "SELECT * FROM Filter WHERE TankId = @id";
                    tank.Filters = db.Query<Filter>(filterSql, new { tank.Id }).ToList();
                }

                return tanks;
            }
            
        }
    }
}
