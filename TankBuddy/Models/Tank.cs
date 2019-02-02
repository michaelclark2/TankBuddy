using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TankBuddy.Models
{
    public class Tank
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int UserId { get; set; }
        public float Width { get; set; }
        public float Length { get; set; }
        public float Depth { get; set; }
        public int Temp { get; set; }
        public float pH { get; set; }
        public float dH { get; set; }
        public List<Filter> Filters { get; set; }
        public List<Fish> Fish { get; set; }
    }
}
