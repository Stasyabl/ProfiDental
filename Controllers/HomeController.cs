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

        public IActionResult Index()
        {
            return View();
        }

        [Route("Price")]
        public IActionResult Price()
        {
            return this.View("/Views/Price/Index.cshtml");
        }

        [Route("Privacy")]
        public IActionResult Privacy()
        {
            return this.View("/Views/Privacy/Index.cshtml");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
