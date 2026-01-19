using Microsoft.AspNetCore.Mvc;

namespace ProfiDental.Controllers;

public class PrivacyController : Controller
{
    [Route("privacy")]
    public IActionResult Index()
    {
        return this.View("~/Views/Privacy/Index.cshtml");
    }
}
