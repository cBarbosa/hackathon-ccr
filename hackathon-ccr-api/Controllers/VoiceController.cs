using hackathon.ccr.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace hackathon.ccr.Controllers
{
    [AllowAnonymous]
    [ApiController]
    public class VoiceController : ControllerBase
    {
        [HttpGet]
        [Produces("application/json")]
        [Route("[controller]/{phone}")]
        public IActionResult Get(int phone)
        {
            var text = VoiceService.GetByPhone(phone);

            if (string.IsNullOrEmpty(text))
            {
                return BadRequest("The item doesn't exists");
            }
            return Ok(text);
        }

        [HttpPost]
        [Produces("application/json")]
        [Route("[controller]/{phone}/{text}")]
        public IActionResult Get(int phone, string text)
        {
            if (!VoiceService.PostTextByPhone(phone, text))
            {
                return BadRequest("Error trying register text");
            }

            return Ok("Register successful");
        }
    }
}