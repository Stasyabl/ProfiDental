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
        modelBuilder.Entity<ServiceType>(entity =>
        {
            entity.ToTable("service_types");
            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Name).HasColumnName("name");
        });

        modelBuilder.Entity<Currency>(entity =>
        {
            entity.ToTable("currencies");
            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Name).HasColumnName("name");
        });

        modelBuilder.Entity<Service>(entity =>
        {
            entity.ToTable("services");
            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Name).HasColumnName("name");
            entity.Property(e => e.Price).HasColumnName("price");

            entity.Property(e => e.CurrencyId).HasColumnName("currency_id");
            entity.Property(e => e.ServiceTypeId).HasColumnName("service_type_id");
        });
    }
}
