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
    public class TanksController : ControllerBase
    {
        private TankProvider _tanks;

        public TanksController(IConfiguration config)
        {
            var db = new DatabaseConnection(config, "TankBuddy");
            _tanks = new TankProvider(db);
        }

        [HttpGet]
        public IActionResult GetTanks()
        {
            throw new NotImplementedException();
        }

        [HttpPost("add")]
        public IActionResult NewTank([FromBody] Tank tank)
        {
            var success = _tanks.AddTank(tank);
            
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
        public IActionResult EditTank([FromBody] object tank)
        {
            throw new NotImplementedException();
        }

        [HttpGet("{id}")]
        public IActionResult GetTankById(int id)
        {
            throw new NotImplementedException();
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteTank(int id)
        {
            throw new NotImplementedException();
        }
    }
}