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
    public class FiltersController : ControllerBase
    {
        private FilterProvider _filters;

        public FiltersController(IConfiguration config)
        {
            var db = new DatabaseConnection(config, "TankBuddy");
            _filters = new FilterProvider(db);
        }

        [HttpPost("add")]
        public IActionResult NewFilter([FromBody] Filter filter)
        {
            bool success = _filters.AddFilter(filter);

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
        public IActionResult EditFilter([FromBody] object filter)
        {
            throw new NotImplementedException();
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteFilter(int id)
        {
            bool success = _filters.DeleteFilter(id);

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