using Microsoft.EntityFrameworkCore;

namespace ProfiDental.Models;

public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {
    }

    public DbSet<Service> Services { get; set; }
    public DbSet<ServiceType> ServiceTypes { get; set; }
    public DbSet<Currency> Currencies { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<ServiceType>().ToTable("service_types");
        modelBuilder.Entity<Currency>().ToTable("currencies");
        modelBuilder.Entity<Service>().ToTable("services");
    }
}
