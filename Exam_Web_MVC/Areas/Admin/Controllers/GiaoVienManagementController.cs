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
    public class GiaoVienManagementController : Controller
    {
        private readonly PortalContext db = new PortalContext();

        // GET: Admin/GiaoVienManagement
        public ActionResult Index(int? page, string keysearch = "")
        {
            ViewBag.keysearch = keysearch;

            var models = (from ad in db.GiaoViens
                          where string.IsNullOrEmpty(keysearch)
                            || ad.TenGV.Contains(keysearch)
                          select new GiaoVienEntity()
                          {
                              GiaoVienID = ad.GiaoVienID,
                              TaiKhoanID = ad.TaiKhoanID,
                              TenGV = ad.TenGV,
                              NgaySinh = ad.NgaySinh,
                              GioiTinh = ad.GioiTinh,
                              Email = ad.Email,
                              HocVi = ad.HocVi.TenHocVi,
                              MonHoc = ad.MonHoc.TenMH,
                              UserName = ad.TaiKhoan.UserName
                          }).OrderByDescending(x => x.GiaoVienID).ToPagedList(page ?? 1, 15);

            ViewBag.stt = (models.PageNumber - 1) * 15 + 1;

            return View(models);
        }

        // GET: Admin/GiaoVienManagement/Create
        public ActionResult Create()
        {
            ViewBag.HocViID = new SelectList(db.HocVis, "HocViID", "TenHocVi");
            ViewBag.MonHocID = new SelectList(db.MonHocs, "MonHocID", "TenMH");
            return View();
        }

        // POST: Admin/GiaoVienManagement/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(GiaoVien_TaiKhoan_Model model, string strNgaySinh)
        {
            if (!string.IsNullOrEmpty(strNgaySinh))
            {
                var myDate = DateTime.ParseExact(strNgaySinh, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
                model.NgaySinh = myDate;
            }
            else
            {
                model.NgaySinh = null;
            }

            ModelState.Clear();
            TryValidateModel(model);

            if (ModelState.IsValid)
            {
                var taiKhoan = new TaiKhoan
                {
                    UserName = model.UserName,
                    Password = model.Password,
                    Role = "teacher"
                };

                var giaoVien = new GiaoVien
                {
                    TenGV = model.TenGV,
                    NgaySinh = model.NgaySinh,
                    GioiTinh = model.GioiTinh,
                    Email = model.Email,
                    MonHocID = model.MonHocID,
                    HocViID = model.HocViID
                };
                taiKhoan.GiaoViens.Add(giaoVien);

                db.TaiKhoans.Add(taiKhoan);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View();
        }

        // GET: Admin/GiaoVienManagement/Edit/5
        public ActionResult Edit(int id)
        {
            GiaoVien_TaiKhoan_Model viewModel = new GiaoVien_TaiKhoan_Model();

            var giaoVien = db.GiaoViens.Find(id);

            viewModel.GiaoVienID = giaoVien.GiaoVienID;
            viewModel.TaiKhoanID = giaoVien.TaiKhoanID;
            viewModel.TenGV = giaoVien.TenGV;
            viewModel.NgaySinh = giaoVien.NgaySinh;
            viewModel.GioiTinh = giaoVien.GioiTinh;
            viewModel.Email = giaoVien.Email;
            viewModel.MonHocID = giaoVien.MonHocID;
            viewModel.HocViID = giaoVien.HocViID;

            if (giaoVien.TaiKhoanID != null)
            {
                var taiKhoan = db.TaiKhoans.Find(giaoVien.TaiKhoanID);

                viewModel.UserName = taiKhoan.UserName;
                viewModel.Role = taiKhoan.Role;
            }
            ViewBag.HocViID = new SelectList(db.HocVis, "HocViID", "TenHocVi", giaoVien.HocViID);
            ViewBag.MonHocID = new SelectList(db.MonHocs, "MonHocID", "TenMH", giaoVien.MonHocID);

            return View(viewModel);
        }

        // POST: Admin/GiaoVienManagement/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(GiaoVien_TaiKhoan_Model model, string strNgaySinh)
        {
            if (!string.IsNullOrEmpty(strNgaySinh))
            {
                var myDate = DateTime.ParseExact(strNgaySinh, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
                model.NgaySinh = myDate;
            }
            else
            {
                model.NgaySinh = null;
            }

            ModelState.Clear();
            TryValidateModel(model);

            if (ModelState.IsValid)
            {
                if (model.TaiKhoanID != null && !string.IsNullOrEmpty(model.Password))
                {
                    var taikhoan = db.TaiKhoans.Find(model.TaiKhoanID);

                    taikhoan.Password = model.Password;
                    db.Entry(taikhoan).State = EntityState.Modified;
                }

                var giaoVien = db.GiaoViens.Find(model.GiaoVienID);
                giaoVien.TenGV = model.TenGV;
                giaoVien.NgaySinh = model.NgaySinh;
                giaoVien.GioiTinh = model.GioiTinh;
                giaoVien.Email = model.Email;
                giaoVien.MonHocID = model.MonHocID;
                giaoVien.HocViID = model.HocViID;

                db.Entry(giaoVien).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(model);
        }

        // GET: Admin/GiaoVienManagement/Delete/5
        public ActionResult Delete(int id)
        {

            var giaovien = db.GiaoViens.Find(id);
            if (giaovien.TaiKhoanID != null)
            {
                var taiKhoan = db.TaiKhoans.Find(giaovien.TaiKhoanID);
                db.TaiKhoans.Remove(taiKhoan);
            }

            db.GiaoViens.Remove(giaovien);
            db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}
