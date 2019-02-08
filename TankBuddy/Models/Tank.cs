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
        public List<Warning> Warnings { get => CheckWarnings(); set { } }

        private List<Warning> CheckWarnings()
        {
            var warnings = new List<Warning>();

            if (Fish != null)
            {
                foreach (var f in Fish)
                {
                    if (f.MaxSize >= StockAvailable)
                    {
                        warnings.Add(new Warning { Fish = f, Message = $"{f.Name} does not have enough space." });
                    }

                    if (pH > f.phMax)
                    {
                        warnings.Add(new Warning { Fish = f, Message = $"The water conditions are too basic for {f.Name}" });
                    }

                    if (pH < f.phMin)
                    {
                        warnings.Add(new Warning { Fish = f, Message = $"The water conditions are too acidid for {f.Name}" });
                    }

                    if (Temp > f.TempMax)
                    {
                        warnings.Add(new Warning { Fish = f, Message = $"The temperature is too warm for {f.Name}" });
                    }

                    if (Temp < f.TempMin)
                    {
                        warnings.Add(new Warning { Fish = f, Message = $"The temperature is too cold for {f.Name}" });
                    }

                    if (dH > f.dhMax)
                    {
                        warnings.Add(new Warning { Fish = f, Message = $"The water conditions are too hard for {f.Name}" });
                    }

                    if (dH < f.dhMin)
                    {
                        warnings.Add(new Warning { Fish = f, Message = $"The water conditions are too soft for {f.Name}" });
                    }


                    if (Fish.Any(fish => f.Sex != fish.Sex && f.Reproduction.Equals(fish.Reproduction) && f.ScientificName.Equals(fish.ScientificName)))
                    {
                        warnings.Add(new Warning { Fish = f, Message = $"{f.Name} may reproduce." });
                    }

                    if (Fish.Any(fish => !f.TemperamentSelf.Equals("peaceful") && f.Family.Equals(fish.Family)))
                    {

                        if (Fish.Any(fish => f.TemperamentSelf.Equals("aggressive/territorial") && f.Family.Equals(fish.Family))
                            || Fish.Any(fish => f.TemperamentSelf.Equals("peaceful to females") && (f.Sex && fish.Sex) && f.Family.Equals(fish.Family))
                            || Fish.Any(fish => f.TemperamentSelf.Equals("peaceful to males") && (!f.Sex && fish.Sex) && f.Family.Equals(fish.Family))
                            )
                        {
                            warnings.Add(new Warning { Fish = f, Message = $"{f.Name} might act aggressive." });
                        }

                    }
                }
            }

            return warnings;
        }

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
