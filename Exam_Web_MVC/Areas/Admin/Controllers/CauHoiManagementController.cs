using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Exam_Web_MVC.Models;
using PagedList;

namespace Exam_Web_MVC.Areas.Admin.Controllers
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
            ViewBag.keysearch = keysearch;

            var models = (from ad in db.CauHois
                          where string.IsNullOrEmpty(keysearch)
                            || ad.NoiDungCauHoi.Contains(keysearch)
                            || ad.MonHoc.TenMH.Contains(keysearch)
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
                              MonHoc = ad.MonHoc.TenMH,
                              Image = ad.Image
                          }).OrderByDescending(x => x.CauHoiID).ToPagedList(page ?? 1, 10);

            return View(models);
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
            //ViewBag.MonHocID = new SelectList(db.MonHocs, "MonHocID", "TenMH", cauHoi.MonHocID);
            return View(cauHoi);
        }

        // GET: Admin/CauHoiManagement/Edit/5
        public ActionResult Edit(int id)
        {
            var cauHoi = db.CauHois.Find(id);
            ViewBag.MonHocID = new SelectList(db.MonHocs, "MonHocID", "TenMH", cauHoi.MonHocID);
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
                db.CauHois.Add(cauHoi);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MonHocID = new SelectList(db.MonHocs, "MonHocID", "TenMH", cauHoi.MonHocID);
            return View(cauHoi);
        }

        // GET: Admin/CauHoiManagement/Delete/5
        public ActionResult Delete(int id)
        {
            var entity = db.CauHois.Find(id);
            db.CauHois.Remove(entity);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
