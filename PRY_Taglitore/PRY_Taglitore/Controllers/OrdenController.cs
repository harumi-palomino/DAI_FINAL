using PRY_Taglitore.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PRY_Taglitore.Controllers
{
    public class OrdenController : Controller
    {
        // GET: Orden
        public ActionResult Index()
        {
            using (DbModels context = new DbModels())
            {
                return View(context.Ordenes.ToList());
            }
        }

        // GET: Orden/Details/5
        public ActionResult Details(int id)
        {
            using (DbModels context = new DbModels())
            {
                var orden = context.Ordenes.FirstOrDefault(x => x.OrdenID == id);
                if (orden == null)
                {
                    return HttpNotFound();
                }
                return View(orden);
            }
        }


        // GET: Orden/Create
        public ActionResult Create( )
        { 
            return View();
        }

        // POST: Orden/Create
        [HttpPost]
        public ActionResult Create(Ordenes ordenes)
        {
            try
            {
                using (DbModels context = new DbModels())
                {
                    context.Ordenes.Add(ordenes);
                    context.SaveChanges();
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Orden/Edit/5
        public ActionResult Edit(int id)
        {
            using (DbModels context = new DbModels())
            {
                return View(context.Ordenes.Where(x => x.OrdenID == id).FirstOrDefault());
            }
        }

        // POST: Orden/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, Ordenes ordenes)
        {
            try
            {
                using (DbModels context = new DbModels())
                {
                    context.Entry(ordenes).State = EntityState.Modified;
                    context.SaveChanges();
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Orden/Delete/5
        public ActionResult Delete(int id)
        {
            using (DbModels context = new DbModels())
            {
                return View(context.Ordenes.Where(x => x.OrdenID == id).FirstOrDefault());
            }
        }

        // POST: Orden/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                using (DbModels context = new DbModels())
                {
                    Ordenes ordenes = context.Ordenes.Where(x=>x.OrdenID == id).FirstOrDefault();
                    context.Ordenes.Remove(ordenes);
                    context.SaveChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
