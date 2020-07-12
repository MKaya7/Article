using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Makale_CRUD.Models;
using System.Collections.Generic;
using System;
using System.Threading.Tasks;
using static Makale_CRUD.Models.Makale;

namespace Makale_CRUD.Controllers
{
    [Route("makale")]
    public class MakaleController : Controller
    {
        private DataContext db = new DataContext();
        [Route("")]
        [Route("Index")]
        [Route("~/")]
        public IActionResult Index()
        {
            ViewBag.makaleler = db.Makaleler.ToList();
            return View();
        }
        //[HttpGet]
        //[Route("Listele")]
        //public IEnumerable<Models.Makale> Get()
        //{
        //    return db.Makaleler.ToList();
        //}

        [HttpGet]
        [Route("Add")]
        public IActionResult Add()
        {
            return View("Add");
        }
        [HttpPost]
        [Route("Add")]
        public IActionResult Add(Models.Makale makale)
        {
            try
            {
                db.Makaleler.Add(makale);
                db.SaveChanges();
                return (IActionResult)db.Makaleler.ToList();
            }
            catch
            {
                return RedirectToAction("Index");
            }
   
        }
        [HttpGet]
        [Route("delete/{Id}")]
        public IActionResult Delete(string id)
        {
            db.Remove(db.Makaleler.Find(id));
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        [Route("edit/{Id}")]
        public IActionResult Edit(string id)
        {
            db.SaveChanges();
            return View("Edit",db.Makaleler.Find(id));
        }
        [HttpPost]
        [Route("edit/{Id}")]
        public IActionResult Edit(string id, Models.Makale makale)
        {
            db.Entry(makale).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
