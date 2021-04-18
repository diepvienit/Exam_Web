using Exam_Web_MVC.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Exam_Web_MVC.Areas.Teacher.Controllers
{
    public class CauHoiManagementController : Controller
    {
        private readonly PortalContext db = new PortalContext();

        // GET: Admin/CauHoiManagement
        //public ActionResult Index()
        //{
        //    return View(cauHoiRepository.GetAll());
        //}

        public ActionResult Index(int? page, string keysearch = "")
        {
            int pageIndex = 1;
            ViewBag.keysearch = keysearch;

            var models = (from ad in db.CauHois
                          where string.IsNullOrEmpty(keysearch)
                            || ad.NoiDungCauHoi.Contains(keysearch)
                          select new CauHoiEntity()
                          {
                              CauHoiID = ad.CauHoiID,
                              NoiDungCauHoi = ad.NoiDungCauHoi,
                              Answer_A = ad.Answer_A,
                              Answer_B = ad.Answer_B,
                              Answer_C = ad.Answer_C,
                              Answer_D = ad.Answer_D,
                              CauTraLoiDung = ad.CauTraLoiDung,
                              DoKhoID = ad.DoKhoID,
                              MonHocID = ad.MonHocID,
                              DoKho = ad.DoKho.TenDoKho,
                              MonHoc = ad.MonHoc.TenMH
                          }).OrderByDescending(x => x.CauHoiID).ToPagedList(page ?? 1, 10);

            ViewBag.stt = (models.PageNumber - 1) * 10 + 1;

            return View(models);
        }

        [HttpPost]
        //[HttpGet]
        public ActionResult Index(string searchString)
        {
            return RedirectToAction("Search", new { searchString });
        }

        public ActionResult Create()
        {

            ViewBag.MonHocID = new SelectList(db.MonHocs, "MonHocID", "TenMH");
            ViewBag.DoKhoID = new SelectList(db.DoKhoes, "DoKhoID", "TenDoKho");
            return View();
        }

        // POST: Admin/CauHoiManagement/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(CauHoi cauHoi)
        {
            if (ModelState.IsValid)
            {
                db.CauHois.Add(cauHoi);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(cauHoi);
        }

        // GET: Admin/CauHoiManagement/Edit/5
        public ActionResult Edit(int id)
        {
            CauHoi cauHoi = db.CauHois.Find(id);
            ViewBag.MonHocID = new SelectList(db.MonHocs, "MonHocID", "TenMH", cauHoi.MonHocID);
            ViewBag.DoKhoID = new SelectList(db.DoKhoes, "DoKhoID", "TenDoKho", cauHoi.DoKhoID);
            return View(cauHoi);
        }

        // POST: Admin/CauHoiManagement/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(CauHoi cauHoi)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cauHoi).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MonHocID = new SelectList(db.MonHocs, "MonHocID", "TenMH", cauHoi.MonHocID);
            return View(cauHoi);
        }

        // GET: Admin/CauHoiManagement/Delete/5
        public ActionResult Delete(int id)
        {
            CauHoi entity = db.CauHois.Find(id);
            db.CauHois.Remove(entity);
            db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}