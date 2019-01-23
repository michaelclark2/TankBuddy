using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace TankBuddy.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FishController : ControllerBase
    {

        [HttpGet("search")]
        public IActionResult FindFish([FromQuery] string terms)
        {
            throw new NotImplementedException();
        }

        [HttpPost("add")]
        public IActionResult NewFish([FromBody] object fish)
        {
            throw new NotImplementedException();
        }

        [HttpPut("edit")]
        public IActionResult EditFish([FromBody] object fish)
        {
            throw new NotImplementedException();
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteFish(int id)
        {
            throw new NotImplementedException();
        }
    }
}