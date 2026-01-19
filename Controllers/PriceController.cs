using Microsoft.AspNetCore.Mvc;

namespace ProfiDental.Controllers;

public class PriceController : Controller
{
    [Route("price")]
    public IActionResult Index()
    {
        return this.View("~/Views/Price/Index.cshtml");
    }
}
