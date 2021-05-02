using Exam_Web_MVC.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
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
            var userId = Convert.ToInt32(Session["TaiKhoanID_session"]);

            if (userId == 0)
            {
                return Redirect("/Home/Login");
            }
            var userInfo = db.GiaoViens.FirstOrDefault(x => x.TaiKhoanID == userId);
            var monhocid = userInfo.MonHocID;

            ViewBag.keysearch = keysearch;

            var models = (from ad in db.CauHois
                          where ad.MonHocID == monhocid &&
                            (string.IsNullOrEmpty(keysearch)
                            || ad.NoiDungCauHoi.Contains(keysearch))
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

            ViewBag.stt = (models.PageNumber - 1) * 10 + 1;

            return View(models);
        }

        public ActionResult Create()
        {
            var userId = Convert.ToInt32(Session["TaiKhoanID_session"]);

            if (userId == 0)
            {
                return Redirect("/Home/Login");
            }
            var userInfo = db.GiaoViens.FirstOrDefault(x => x.TaiKhoanID == userId);
            ViewBag.tenmonhoc = userInfo.MonHoc.TenMH;

            ViewBag.DoKhoID = new SelectList(db.DoKhoes, "DoKhoID", "TenDoKho");
            return View();
        }

        // POST: Admin/CauHoiManagement/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(CauHoi cauHoi, HttpPostedFileBase urlImage)
        {
            var userId = Convert.ToInt32(Session["TaiKhoanID_session"]);

            if (userId == 0)
            {
                return Redirect("/Home/Login");
            }
            var userInfo = db.GiaoViens.FirstOrDefault(x => x.TaiKhoanID == userId);
            cauHoi.MonHocID = userInfo.MonHocID;

            ModelState.Clear();
            TryValidateModel(cauHoi);

            if (ModelState.IsValid)
            {
                if (urlImage.ContentLength > 0)
                {
                    string fileName = Path.GetFileNameWithoutExtension(urlImage.FileName);
                    string extension = Path.GetExtension(urlImage.FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    cauHoi.Image = "/Content/Uploads/UploadImages/" + fileName;
                    fileName = Path.Combine(Server.MapPath("~/Content/Uploads/UploadImages/"), fileName);
                    urlImage.SaveAs(fileName);
                }

                db.CauHois.Add(cauHoi);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(cauHoi);
        }

        // GET: Admin/CauHoiManagement/Edit/5
        public ActionResult Edit(int id)
        {
            var userId = Convert.ToInt32(Session["TaiKhoanID_session"]);

            if (userId == 0)
            {
                return Redirect("/Home/Login");
            }
            var userInfo = db.GiaoViens.FirstOrDefault(x => x.TaiKhoanID == userId);
            ViewBag.tenmonhoc = userInfo.MonHoc.TenMH;

            CauHoi cauHoi = db.CauHois.Find(id);
            ViewBag.DoKhoID = new SelectList(db.DoKhoes, "DoKhoID", "TenDoKho", cauHoi.DoKhoID);
            return View(cauHoi);
        }

        // POST: Admin/CauHoiManagement/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(CauHoi cauHoi, HttpPostedFileBase urlImage)
        {
            if (ModelState.IsValid)
            {
                if (urlImage.ContentLength > 0)
                {
                    string fileName = Path.GetFileNameWithoutExtension(urlImage.FileName);
                    string extension = Path.GetExtension(urlImage.FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    cauHoi.Image = "/Content/Uploads/UploadImages/" + fileName;
                    fileName = Path.Combine(Server.MapPath("~/Content/Uploads/UploadImages/"), fileName);
                    urlImage.SaveAs(fileName);
                }

                db.Entry(cauHoi).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MonHocID = new SelectList(db.MonHocs, "MonHocID", "TenMH", cauHoi.MonHocID);
            return View(cauHoi);
        }

        // GET: Teacher/CauHoiManagement/Delete/5
        public ActionResult Delete(int id)
        {
            CauHoi entity = db.CauHois.Find(id);
            db.CauHois.Remove(entity);
            db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}