using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TankBuddy.Models
{
    public class Tank
    {
        private float width;
        private float length;
        private float depth;
        private int temp;

        public int Id { get; set; }
        public string Name { get; set; }
        public int UserId { get; set; }
        public bool Metric { get; set; } = true;
        public float Width
        {
            get => Metric ? (width) : (float)Math.Round(width / (float)2.54, 2);
            set { width = Metric ? value : value * (float)2.54; }
        }
        public float Length
        {
            get => Metric ? (length) : (float)Math.Round(length / (float)2.54, 2);
            set { length = Metric ? value : value * (float)2.54; }
        }
        public float Depth
        {
            get => Metric ? (depth) : (float)Math.Round(depth / (float)2.54, 2);
            set { depth = Metric ? value : value * (float)2.54; }
        }
        public int Temp
        {
            get => Metric ? (temp) : (temp * 9/5) + 32;
            set { temp = Metric ? value : (value - 32) * 5/9; }
        }
        public decimal Volume => Metric ? (decimal)((length * width * depth) / 1000) : (decimal)((length * width * depth) / 3785.412);
        public float pH { get; set; }
        public float dH { get; set; }
        public List<Filter> Filters { get; set; }
        public List<Fish> Fish { get; set; }
        public decimal StockCapacity => Metric ? Math.Round(AdjustCapacity(Volume), 2) : Math.Round(AdjustCapacity(Volume * 2), 2);
        public decimal StockAvailable => Math.Round(StockCapacity - SumFishSize(Fish), 2);

        private decimal SumFishSize(IEnumerable<Fish> fish)
        {
            if (fish != null)
            {
                return Metric ? fish.Sum(f => f.MaxSize) : fish.Sum(f => f.MaxSize) / (decimal)2.54;
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

                    isMetric(filter);

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

        private void isMetric (Filter filter)
        {
            filter.Metric = Metric;
        }
    }
}
