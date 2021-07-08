using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using MyLinks.Domain.Repository;

namespace MyLinks.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ResourceController : ControllerBase
    {    
        private ILinkResourceRepository _repository;

        public ResourceController(ILinkResourceRepository repository)
        {
           _repository = repository;
        }

        [HttpGet]
        public ActionResult Get()
        {
            return Ok(_repository.GetAll());
        }
    }
}
