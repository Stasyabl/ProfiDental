using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using ProfiDental.Models;

namespace ProfiDental.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index() => this.View();

        //[Route("Price")]
        //public IActionResult Price() => this.View();

        [Route("Privacy")]
        public IActionResult Privacy() => this.View();

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
