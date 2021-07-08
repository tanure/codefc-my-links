using System;

namespace MyLinks.Domain
{
    public abstract class Resource : IResource
    {
        public Guid Id { get; set;}

        public string Title { get; set; }
    }
}