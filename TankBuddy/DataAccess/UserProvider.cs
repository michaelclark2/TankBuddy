using TankBuddy.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Dapper;

namespace TankBuddy.DataAccess
{
    public class UserProvider
    {
        private DatabaseConnection _db;

        public UserProvider(DatabaseConnection db)
        {
            _db = db;
        }

        public User FindUser(string uid)
        {
            using (var db = _db.GetConnection())
            {
                string sql = "SELECT * FROM [User] WHERE Uid = @uid";
                return db.QueryFirstOrDefault<User>(sql, new { uid });
            }
        }
    }
}
