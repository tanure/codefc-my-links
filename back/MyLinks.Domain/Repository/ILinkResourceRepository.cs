using System;
using System.Collections.Generic;

namespace MyLinks.Domain.Repository
{
    public interface ILinkResourceRepository
    {
        void Save(LinkResource domain);

        LinkResource GetById(Guid id);

        void DeleteById(Guid id);

        ICollection<LinkResource> GetAll();
    }
}