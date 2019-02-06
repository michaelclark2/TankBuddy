using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TankBuddy.Models
{
    public class User
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Uid { get; set; }
        public bool Metric { get; set; } = true;
        public List<Tank> Tanks { get; set; }
    }
}
