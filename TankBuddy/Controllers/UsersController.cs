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
    public class UsersController : ControllerBase
    {
        [HttpGet("/login")]
        public IActionResult Login()
        {
            throw new NotImplementedException();
        }

        [HttpPost("/register")]
        public IActionResult Register([FromBody] object user)
        {
            throw new NotImplementedException();
        }
    }
}