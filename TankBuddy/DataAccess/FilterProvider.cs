using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TankBuddy.Models;

namespace TankBuddy.DataAccess
{
    public class FilterProvider
    {
        private DatabaseConnection _db;

        public FilterProvider(DatabaseConnection db)
        {
            _db = db;
        }

        public bool AddFilter(Filter filter)
        {
            using (var db = _db.GetConnection())
            {
                string sql = "INSERT INTO Filter VALUES (@name, @flowRate, @type, @tankId)";
                return db.Execute(sql, filter) == 1;
            }
        }
    }
}
