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
    public class TanksController : ControllerBase
    {

        [HttpGet]
        public IActionResult GetTanks()
        {
            throw new NotImplementedException();
        }

        [HttpPost("add")]
        public IActionResult NewTank([FromBody] object tank)
        {
            throw new NotImplementedException();
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