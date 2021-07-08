using System;

namespace MyLinks.Domain
{
    public interface IResource
    {
        Guid Id { get; set;}

        string Title { get; set; }
    }
}