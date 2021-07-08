using System;
using System.Collections.Generic;
using MyLinks.Domain;
using MyLinks.Domain.Repository;

namespace MyLinks.API.Repository
{
    public class LinkResourceRepository : ILinkResourceRepository
    {
        public void Save(LinkResource domain)
        {}

        public LinkResource GetById(Guid id)
        {
            return new LinkResource {
                Id = Guid.NewGuid(),
                Title = "Site",
                URL = "http://www.codefc.com.br"
            };

        }

        public void DeleteById(Guid id){}

        public ICollection<LinkResource> GetAll()
        {
            List<LinkResource> linkResources = new List<LinkResource>();

            linkResources.Add(new LinkResource {
                Id = Guid.NewGuid(),
                Title = "Site",
                URL = "http://www.codefc.com.br"
            });

            linkResources.Add(new LinkResource {
                Id = Guid.NewGuid(),
                Title = "Canal youtube",
                URL = "http://youtube.com/codefc"
            });


            return linkResources;
        }
    }
}