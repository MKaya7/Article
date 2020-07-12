using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System.IO;

namespace Makale_CRUD.Models
{
    public class DataContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var builder = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings1.json");
            var configuration = builder.Build();
            optionsBuilder.UseMySql(configuration
                ["ConnectionStrings:DefaultConnection"]);
        }

        public DbSet<Makale> Makaleler { get; set; }
    }
}
