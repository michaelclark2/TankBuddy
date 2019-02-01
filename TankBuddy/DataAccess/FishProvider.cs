using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TankBuddy.DataAccess
{
    public class FishProvider
    {
        private DatabaseConnection _db;

        public FishProvider(DatabaseConnection db)
        {
            _db = db;
        }
    }
}
