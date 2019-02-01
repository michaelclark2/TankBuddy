using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TankBuddy.Models
{
    public class Fish
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public bool Sex { get; set; }
        public int TankId { get; set; }
        public int SpeciesId { get; set; }
    }
}
