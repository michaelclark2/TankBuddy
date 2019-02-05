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
        public bool Metric { get; set; } = true;
        public float Width { get; set; }
        public float Length { get; set; }
        public float Depth { get; set; }
        public int Temp { get; set; }
        public decimal Volume => (decimal)((Length * Width * Depth) / 1000);
        public float pH { get; set; }
        public float dH { get; set; }
        public List<Filter> Filters { get; set; }
        public List<Fish> Fish { get; set; }
        public decimal StockCapacity => Math.Round(AdjustCapacity(Volume), 0);
        public decimal StockAvailable => Math.Round(StockCapacity - SumFishSize(Fish), 0);

        private decimal SumFishSize(IEnumerable<Fish> fish)
        {
            if (fish != null)
            {
                return fish.Sum(f => f.MaxSize);
            }
            return 0;
        }

        private decimal AdjustCapacity(decimal vol)
        {
            int percentage = 0;

            if (Filters != null && Filters.Count > 0)
            {
                foreach (var filter in Filters)
                {


                    if (filter.Type.Equals("internal"))
                    {
                        if (filter.FlowRate >= this.Volume * 8)
                        {
                            percentage += 5;
                        }
                    }

                    if (filter.Type.Equals("external"))
                    {
                        percentage += 10;
                        if (filter.FlowRate >= this.Volume * 8)
                        {
                            percentage += 15;
                        }
                    }

                    if (filter.Type.Equals("undergravel"))
                    {
                        percentage -= 20;
                    }
                
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
