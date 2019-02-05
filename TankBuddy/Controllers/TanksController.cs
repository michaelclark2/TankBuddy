using System;
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
            string uid = User.FindFirst("user_id").Value;
            var tanks = _tanks.GetTanksByUid(uid);
            if (tanks != null || tanks.Count > 0)
            {
                return Ok(tanks);
            }
            else
            {
                return NoContent();
            }
        }

        [HttpPost("add")]
        public IActionResult NewTank([FromBody] Tank tank)
        {
            var insertedTank = _tanks.AddTank(tank);
            
            if (insertedTank != null)
            {
                return Ok(insertedTank);
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
            bool success = _tanks.DeleteTank(id);

            if (success)
            {
                return Ok();
            }
            else
            {
                return NotFound(new { Message = "The tank could not be found" });
            }
        }
    }
}