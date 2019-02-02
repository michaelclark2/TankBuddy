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
    public class UsersController : ControllerBase
    {
        private UserProvider _users;
        private TankProvider _tanks;

        public UsersController(IConfiguration config)
        {
            var db = new DatabaseConnection(config, "TankBuddy");
            _users = new UserProvider(db);
            _tanks = new TankProvider(db);
        }

        [HttpGet("login")]
        public IActionResult Login()
        {
            var uid = User.FindFirst("user_id").Value;
            var user = _users.FindUser(uid);
            if (user != null)
            {
                user.Tanks = _tanks.GetTanksByUid(uid);
                return Ok(user);
            }
            else
            {
                return NotFound(new { Message = "The user could not be found."});
            }
        }

        [AllowAnonymous]
        [HttpPost("register")]
        public IActionResult Register([FromBody] User user)
        {
            var newUser = _users.AddUser(user);

            if (newUser != null)
            {
                return Ok(newUser);
            }
            else
            {
                return BadRequest(new { Message = "The user could not be added" });
            }
            
        }
    }
}