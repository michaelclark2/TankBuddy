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
        public bool Metric { get; set; } = true;
        public int Temp { get; set; }
        public float pH { get; set; }
        public float dH { get; set; }
        public List<Filter> Filters { get; set; }
        public List<Fish> Fish { get; set; }
        public decimal Volume => Metric ? (decimal)((Length * Width * Depth) / 1000) : (decimal)((Length * Width * Depth) / 3785.412);
        public decimal StockCapacity => Metric ? AdjustCapacity(Volume) : AdjustCapacity(Volume * 2);
        public decimal StockAvailable => StockCapacity - SumFishSize(Fish);

        private decimal SumFishSize(IEnumerable<Fish> fish)
        {
            if (Metric)
            {
                return fish.Sum(f => f.MaxSize);
            }
            else
            {
                return fish.Sum(f => f.MaxSize) / (decimal)2.54;
            }
        }

        private decimal AdjustCapacity(decimal vol)
        {
            int percentage = 0;

            foreach (var filter in Filters)
            {
                if (filter.Type.Equals("internal"))
                {
                    if (filter.FlowRate > this.Volume * 8)
                    {
                        percentage += 5;
                    }
                }

                if (filter.Type.Equals("external"))
                {
                    percentage += 10;
                    if (filter.FlowRate > this.Volume * 8)
                    {
                        percentage += 15;
                    }
                }

                if (filter.Type.Equals("undergravel"))
                {
                    percentage -= 20;
                }
                
            }

            if (percentage == 0)
            {
                return vol;
            }

            return vol + (vol * ((decimal)percentage / 100));
        }
    }
}
