using FredApi.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Options;
using System;

namespace FredApi.Controllers
{
    [ApiController]
    [Route("/api/[controller]")]
    public class FredVulnerableController : ControllerBase
    {
        [HttpDelete]
        public IActionResult File(string fileName)
        {
            System.IO.File.Delete(fileName);

            return Content("File " + fileName + " deleted");
        }
    }
}
