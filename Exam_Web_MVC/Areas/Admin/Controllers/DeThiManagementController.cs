using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Exam_Web_Core;
using Exam_Web_Core.Repositories;
using Exam_Web_Core.ViewModels;
using Exam_Web_MVC.Models;
using PagedList;

namespace Exam_Web_MVC.Areas.Admin.Controllers
{
    public class DeThiManagementController : Controller
    {
        private readonly PortalContext db = new PortalContext();

        // GET: Admin/DeThiManagement
        public ActionResult Index(int? page, string keysearch = "")
        {
            ViewBag.keysearch = keysearch;

            var models = (from ad in db.DeThis
                          where string.IsNullOrEmpty(keysearch)
                            || ad.TenDeThi.Contains(keysearch)
                          select new DeThiEntity()
                          {
                              DeThiID = ad.DeThiID,
                              MonHocID = ad.MonHocID,
                              TenDeThi = ad.TenDeThi,
                              ThoiGianLamBai = ad.ThoiGianLamBai,
                              ThoiGianBatDauLamBai = ad.ThoiGianBatDauLamBai,
                              LoaiDe = ad.LoaiDe,
                              GiaoVienID = ad.GiaoVienID,
                              Status = ad.Status,
                              Comment = ad.Comment,
                              GiaoVien = ad.GiaoVien.TenGV,
                              MonHoc = ad.MonHoc.TenMH
                          }).OrderByDescending(x => x.DeThiID).ToPagedList(page ?? 1, 15);

            return View(models);
        }

        // GET: Admin/DeThiManagement/Details/5
        public ActionResult Details(int id)
        {
            ViewBag.id = id;
            var deThi = db.DeThis.Find(id);
            ViewBag.CauHois = deThi.CauHois.ToList();

            return View(deThi);
        }

        [HttpPost, ActionName("ReviewFalse")]
        public ActionResult ReviewExam(int id, int status, string comment)
        {
            var dethi = db.DeThis.Find(id);

            if (dethi == null)
            {
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }

            dethi.Status = status;
            dethi.Comment = comment;

            db.Entry(dethi).State = EntityState.Modified;
            db.SaveChanges();

            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost, ActionName("ReviewTrue")]
        public ActionResult ReviewExamTrue(int id)
        {
            var dethi = db.DeThis.Find(id);

            if (dethi == null)
            {
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }

            dethi.Status = 2;

            db.Entry(dethi).State = EntityState.Modified;
            db.SaveChanges();

            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
