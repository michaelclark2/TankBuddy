using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using TankBuddy.DataAccess;

namespace TankBuddy.Controllers
{
    [Route("api/[controller]")]
    [Authorize, ApiController]
    public class UsersController : ControllerBase
    {
        private UserProvider _users;

        public UsersController(IConfiguration config)
        {
            var db = new DatabaseConnection(config, "TankBuddy");
            _users = new UserProvider(db);
        }

        [HttpGet("login")]
        public IActionResult Login()
        {
            var uid = User.FindFirst("user_id").Value;
            var user = _users.FindUser(uid);
            if (user != null)
            {
                return Ok(user);
            }
            else
            {
                return NotFound(new { Message = "The user could not be found."});
            }
        }

        [HttpPost("register")]
        public IActionResult Register([FromBody] object user)
        {
            throw new NotImplementedException();
        }
    }
}