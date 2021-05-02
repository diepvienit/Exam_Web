using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Exam_Web_MVC.Models;
using PagedList;

namespace Exam_Web_MVC.Areas.Teacher.Controllers
{
    public class DeThiManagementController : Controller
    {
        private readonly PortalContext db = new PortalContext();

        // GET: Admin/DeThiManagement
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

            var models = (from ad in db.DeThis
                          where ad.MonHocID == monhocid && (string.IsNullOrEmpty(keysearch)
                            || ad.TenDeThi.Contains(keysearch))
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
            var deThi = db.DeThis.Find(id);
            ViewBag.CauHois = deThi.CauHois.ToList();

            return View(deThi);
        }

        // GET: Admin/DeThiManagement/Create
        public ActionResult Create()
        {
            var userId = Convert.ToInt32(Session["TaiKhoanID_session"]);

            if (userId == 0)
            {
                return Redirect("/Home/Login");
            }

            var userInfo = db.GiaoViens.FirstOrDefault(x => x.TaiKhoanID == userId);

            var monhoc = userInfo.MonHoc;
            ViewBag.tenmonhoc = monhoc.TenMH;
            return View();
        }

        // POST: Admin/DeThiManagement/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(DeThi model, string strStartDate)
        {
            strStartDate += ":00";
            var userId = Convert.ToInt32(Session["TaiKhoanID_session"]);

            if (userId == 0)
            {
                return Redirect("/Home/Login");
            }

            var userInfo = db.GiaoViens.FirstOrDefault(x => x.TaiKhoanID == userId);
            if (userInfo == null)
            {
                return Redirect("/Home/Login");
            }
            model.MonHocID = userInfo.MonHocID;
            model.GiaoVienID = userInfo.GiaoVienID;

            model.ThoiGianBatDauLamBai = DateTime.ParseExact(strStartDate, "dd/MM/yyyy HH:mm:ss", CultureInfo.InvariantCulture);

            ModelState.Clear();
            TryValidateModel(model);

            if (ModelState.IsValid)
            {
                db.DeThis.Add(model);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View();
        }

        // GET: Admin/DeThiManagement/Edit/5
        public ActionResult Edit(int id)
        {
            var userId = Convert.ToInt32(Session["TaiKhoanID_session"]);

            if (userId == 0)
            {
                return Redirect("/Home/Login");
            }

            var userInfo = db.GiaoViens.FirstOrDefault(x => x.TaiKhoanID == userId);

            var monhoc = userInfo.MonHoc;
            ViewBag.tenmonhoc = monhoc.TenMH;

            var model = db.DeThis.Find(id);

            ViewBag.strStartDate = string.Format("{0:dd/MM/yyyy HH:mm}", model.ThoiGianBatDauLamBai);
            return View(model);
        }

        // POST: Admin/DeThiManagement/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind()] DeThi model, string strStartDate)
        {
            strStartDate += ":00";

            model.ThoiGianBatDauLamBai = DateTime.ParseExact(strStartDate, "dd/MM/yyyy HH:mm:ss", CultureInfo.InvariantCulture);
            ModelState.Clear();
            TryValidateModel(model);

            if (ModelState.IsValid)
            {
                db.Entry(model).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            return View(model);
        }

        // GET: Admin/DeThiManagement/Delete/5
        public ActionResult Delete(int id)
        {
            DeThi deThi = db.DeThis.Find(id);
            db.DeThis.Remove(deThi);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        public ActionResult AddQuestionManual(int id)
        {
            ViewBag.id = id;
            var dethi = db.DeThis.Find(id);

            if (dethi != null)
            {
                ViewBag.TenDeThi = dethi.TenDeThi;
                ViewBag.CauHois = dethi.CauHois.ToList();
            }

            return View();
        }

        //Add question to de thi
        public ActionResult AddQuestion(int id, int dethiid)
        {
            //TempData.Keep("DeThiID");
            CauHoi cauHoi = db.CauHois.Find(id);

            DeThi deThi = db.DeThis.Find(dethiid);
            cauHoi.DeThis.Add(deThi);

            db.Entry(cauHoi).State = EntityState.Modified;
            db.SaveChanges();

            return RedirectToAction("AddQuestionManual", new { id = dethiid });
        }

        //Remove question from de thi
        public ActionResult RemoveQuestion(int id, int dethiid)
        {
            CauHoi cauHoi = db.CauHois.Find(id);
            DeThi deThi = db.DeThis.Find(dethiid);

            deThi.CauHois.Remove(cauHoi);

            db.Entry(cauHoi).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Details", new { id = dethiid });
        }

        public ActionResult AddQuestionAuto(int id)
        {
            ViewBag.id = id;
            var dethi = db.DeThis.Find(id);
            if (dethi != null)
            {
                ViewBag.TenDeThi = dethi.TenDeThi;
            }
            return View();
        }

        [HttpPost]
        public ActionResult AddQuestionAuto(int dethiid, int SoCauDe, int SoCauTrungBinh, int SoCauKho, int SoCauRatKho)
        {
            DeThi deThi = db.DeThis.Find(dethiid);
            var listCauDe = db.CauHois.Where(x => x.DoKhoID == 1 && x.MonHocID == deThi.MonHocID).OrderBy(x => Guid.NewGuid()).Take(SoCauDe);
            foreach (var item in listCauDe)
            {
                //o day nhung cau hoi nao trung se khong duoc add nen khong can phai loc cau hoi da co trong de thi
                deThi.CauHois.Add(item);
            }
            var listCauTrungBinh = db.CauHois.Where(x => x.DoKhoID == 2 && x.MonHocID == deThi.MonHocID).OrderBy(x => Guid.NewGuid()).Take(SoCauTrungBinh);
            foreach (var item in listCauTrungBinh)
            {
                //o day nhung cau hoi nao trung se khong duoc add nen khong can phai loc cau hoi da co trong de thi
                deThi.CauHois.Add(item);
            }
            var listCauKho = db.CauHois.Where(x => x.DoKhoID == 3 && x.MonHocID == deThi.MonHocID).OrderBy(x => Guid.NewGuid()).Take(SoCauKho);
            foreach (var item in listCauKho)
            {
                //o day nhung cau hoi nao trung se khong duoc add nen khong can phai loc cau hoi da co trong de thi
                deThi.CauHois.Add(item);
            }
            var listCauRatKho = db.CauHois.Where(x => x.DoKhoID == 4 && x.MonHocID == deThi.MonHocID).OrderBy(x => Guid.NewGuid()).Take(SoCauRatKho);
            foreach (var item in listCauRatKho)
            {
                //o day nhung cau hoi nao trung se khong duoc add nen khong can phai loc cau hoi da co trong de thi
                deThi.CauHois.Add(item);
            }

            db.Entry(deThi).State = EntityState.Modified;
            db.SaveChanges();

            return RedirectToAction("Details", "DeThiManagement", new { id = dethiid });
        }

        [HttpPost, ActionName("SendReview")]
        public JsonResult SendReview(int dethiid)
        {
            var dethi = db.DeThis.Find(dethiid);
            if (dethi != null)
            {
                dethi.Status = 1;

                db.Entry(dethi).State = EntityState.Modified;
                db.SaveChanges();

                return Json(new { success = true }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { success = false }, JsonRequestBehavior.AllowGet);
        }
    }
}