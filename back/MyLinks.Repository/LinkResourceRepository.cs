using MyLinks.Domain;
using MyLinks.Domain.Repository;
using MyLinks.Repository.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyLinks.Repository
{
    public class LinkResourceRepository : ILinkResourceRepository
    {
        private MyLinkDbContext _context;

        public LinkResourceRepository(MyLinkDbContext dbContext)
        {
            _context = dbContext;
        }

        public void DeleteById(Guid id)
        {
            var domain = GetById(id);

            if (domain == null)
                throw new Exception("Domain not found");

            _context.LinksResources.Remove(domain);

            _context.SaveChanges();
        }

        public ICollection<LinkResource> GetAll()
        {
            return _context.LinksResources.OrderBy(l => l.Title).ToList();
        }

        public LinkResource GetById(Guid id)
        {
            return _context.LinksResources.FirstOrDefault(l => l.Id == id);
        }

        public void Save(LinkResource domain)
        {
            if (domain.Id == Guid.Empty)
                _context.LinksResources.Add(domain);
            else
                _context.LinksResources.Update(domain);


            _context.SaveChanges();
        }
    }
}
