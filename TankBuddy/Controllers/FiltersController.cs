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
    public class FiltersController : ControllerBase
    {

        [HttpPost("add")]
        public IActionResult NewFilter([FromBody] object filter)
        {
            throw new NotImplementedException();
        }

        [HttpPut("edit")]
        public IActionResult EditFilter([FromBody] object filter)
        {
            throw new NotImplementedException();
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteFilter(int id)
        {
            throw new NotImplementedException();
        }
    }
}