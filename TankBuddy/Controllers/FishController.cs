﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using TankBuddy.DataAccess;
using TankBuddy.Models;

namespace TankBuddy.Controllers
{
    [Route("api/[controller]")]
    [Authorize, ApiController]
    public class FishController : ControllerBase
    {
        private SpeciesProvider _species;
        private FishProvider _fish;

        public FishController(IConfiguration config)
        {
            _species = new SpeciesProvider(new DatabaseConnection(config, "Species"));
            _fish = new FishProvider(new DatabaseConnection(config, "TankBuddy"));
        }

        [HttpGet("search")]
        public IActionResult FindFish([FromQuery] string q)
        {
            var searchRes = _species.SearchSpecies(q);

            if (searchRes != null && searchRes.Count > 0)
            {
                return Ok(searchRes);
            }
            else
            {
                return NoContent();
            }
        }

        [HttpPost("add")]
        public IActionResult NewFish([FromBody] Fish fish)
        {
            bool success = _fish.AddFish(fish);
            
            if (success)
            {
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }

        [HttpPut("edit")]
        public IActionResult EditFish([FromBody] object fish)
        {
            throw new NotImplementedException();
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteFish(int id)
        {
            bool success = _fish.RemoveFish(id);

            if (success)
            {
                return Ok();
            }
            else
            {
                return NotFound();
            }
        }
    }
}