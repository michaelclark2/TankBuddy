using Newtonsoft.Json;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using TankBuddy.Models;

namespace TankBuddyTest
{
    [TestFixture]
    public class UnitTest1
    {
        //[TestCase(30, 30, 30, 7, 30, 25, "{fish: {}, message: \"this sucked bad\"}", TestName = "tests1")]
        //public void tank_should_calculate_volume(int width, int length, int depth, float ph, int dh, int temp, string error)
        //{
        //    var expectedWarning = JsonConvert.DeserializeObject<Warning>(error);
        //    var tank = new Tank() { Name = "Test Tank", Width = width, Length = width, Depth = width, pH = ph, dH = dh, Temp = temp };
        //    Assert.AreEqual(27, tank.Volume);
        //    Assert.IsTrue(tank.Warnings.Contains(expectedWarning));
        //}

        [TestCase(30, 30, 30, 27, TestName = "volume test 1")]
        [TestCase(50, 50, 50, 125, TestName = "volume test 2")]
        public void tank_should_calculate_volume(int width, int length, int depth, decimal expected)
        {
            var tank = new Tank() { Width = width, Length = length, Depth = depth };
            Assert.AreEqual(expected, tank.Volume);
        }

        [TestCase(30, "The temperature is too warm for Fish1", TestName = "temperature is too warm")]
        [TestCase(19, "The temperature is too cool for Fish1", TestName = "temperature is too cool")]
        public void temperature_is_too_warm(int temp, string error)
        {
            var tank = new Tank() { Temp = temp };
            tank.Fish = new List<Fish>()
            {
                new Fish() { Name = "Fish1", Sex = true, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "", TemperamentOthers = "", TankLevel = ""}

            };

            var warnings = tank.Warnings.Select(w => w.Message).ToList();
            Assert.Contains(error, warnings);
        }

        [Test]
        public void peaceful_to_females_aggressive_to_males()
        {
            var tank = new Tank() { };
            tank.Fish = new List<Fish>()
            {
                new Fish() { Name = "Fish1", Sex = false, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "peaceful to females", TemperamentOthers = "", TankLevel = ""},
                new Fish() { Name = "Fish2", Sex = false, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "peaceful to females", TemperamentOthers = "", TankLevel = ""}

            };

            var warnings = tank.Warnings.Select(w => w.Message).ToList();
            Assert.Contains("Fish1 might act aggressive", warnings);
        }

        [Test]
        public void peaceful_to_males_aggressive_to_females()
        {
            var tank = new Tank() { };
            tank.Fish = new List<Fish>()
            {
                new Fish() { Name = "Fish1", Sex = true, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "peaceful to males", TemperamentOthers = "", TankLevel = ""},
                new Fish() { Name = "Fish2", Sex = true, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "peaceful to males", TemperamentOthers = "", TankLevel = ""}

            };

            var warnings = tank.Warnings.Select(w => w.Message).ToList();
            Assert.Contains("Fish1 might act aggressive", warnings);
        }

        [Test]
        public void territorial_aggression_same_family()
        {
            var tank = new Tank() { };
            tank.Fish = new List<Fish>()
            {
                new Fish() { Name = "Fish1", Sex = true, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "aggressive/territorial", TemperamentOthers = "", TankLevel = ""},
                new Fish() { Name = "Fish2", Sex = false, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "aggressive/territorial", TemperamentOthers = "", TankLevel = ""}

            };

            var warnings = tank.Warnings.Select(w => w.Message).ToList();
            Assert.Contains("Fish1 might act aggressive", warnings);
        }

        [Test]
        public void aggressive_to_smaller()
        {
            var tank = new Tank();
            tank.Fish = new List<Fish>()
            {
                new Fish() {Name = "Fish1", Sex = true, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "peaceful", TemperamentOthers = "aggressive to smaller", TankLevel = "" },
                new Fish() {Name = "Fish2", Sex = true, Family = "Characidae", CommonName = "Blue emperor tetra", ScientificName = "Inpaichthys kerri", MaxSize = 3, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "peaceful", TemperamentOthers = "peaceful", TankLevel = "" }
            };

            var warnings = tank.Warnings.Select(w => w.Message).ToList();
            Assert.Contains("Fish1 might act aggressive towards Fish2", warnings);

        }

        [Test]
        public void reproduction()
        {
            var tank = new Tank();
            tank.Fish = new List<Fish>()
            {
                new Fish() {Name = "Fish1", Sex = true, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "peaceful", TemperamentOthers = "aggressive to smaller", TankLevel = "" },
                new Fish() {Name = "Fish2", Sex = false, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "peaceful", TemperamentOthers = "aggressive to smaller", TankLevel = "" },

            };

            var warnings = tank.Warnings.Select(w => w.Message).ToList();
            Assert.Contains("Fish1 may reproduce", warnings);
        }


        [Test]
        public void territorial_to_others()
        {
            var tank = new Tank();
            tank.Fish = new List<Fish>()
            {
                new Fish() {Name = "Fish1", Sex = false, Family = "Osphronemidae", CommonName = "Paradise fish", ScientificName = "Macropodus opercularis", MaxSize = 10, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "peaceful", TemperamentOthers = "aggressive/territorial", TankLevel = "" },
                new Fish() {Name = "Fish2", Sex = true, Family = "Characidae", CommonName = "Blue emperor tetra", ScientificName = "Inpaichthys kerri", MaxSize = 9, phMin = (float)6.8, phMax = 8, dhMin = 4, dhMax = 18, TempMin = 20, TempMax = 29, Reproduction = "Spawning", TemperamentSelf = "peaceful", TemperamentOthers = "peaceful", TankLevel = "" }
            };
        }

        
    }
}
