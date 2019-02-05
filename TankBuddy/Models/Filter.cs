using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TankBuddy.Models
{
    public class Filter
    {
        private decimal flowrate;

        public int Id { get; set; }
        public string Name { get; set; }
        public bool Metric { get; set; } = true;
        public decimal FlowRate { get; set; }
        public string Type { get; set; }
        public int TankId { get; set; }
    }
}
