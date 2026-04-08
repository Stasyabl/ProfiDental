using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProfiDental.Models;

namespace ProfiDental.Controllers
{
    public class PricesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public PricesController(ApplicationDbContext context)
        {
            this._context = context;
        }

        [Route("Price")]
        public async Task<IActionResult> Price()
        {
            var categories = await this._context.ServiceTypes.Include(st => st.Services)
                .ThenInclude(s => s.Currency)
                .OrderBy(st => st.Id)
                .ToListAsync();

            return this.View(categories);
        }
    }
}
