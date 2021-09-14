using Microsoft.EntityFrameworkCore;
using MyLinks.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyLinks.Repository.Context
{
    public class MyLinkDbContext : DbContext
    {
        public DbSet<LinkResource> LinksResources { get; set; }

        public MyLinkDbContext(DbContextOptions<MyLinkDbContext> options) : base(options)
        {

        }
    }
}
