using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TankBuddy.Models
{
    public class Species
    {
        public int Id { get; set; }
        public string CommonName { get; set; }
        public string ScientificName { get; set; }
        public string Family { get; set; }
        public int MaxSize { get; set; }
        public float phMin { get; set; }
        public float phMax { get; set; }
        public int dhMin { get; set; }
        public int dhMax { get; set; }
        public int TempMin { get; set; }
        public int TempMax { get; set; }
        public string Reproduction { get; set; }
        public string TemperamentSelf { get; set; }
        public string TemperamentOthers { get; set; }
        public string TankLevel { get; set; }
    }
}
