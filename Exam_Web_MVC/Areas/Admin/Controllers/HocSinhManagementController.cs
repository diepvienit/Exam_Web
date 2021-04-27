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
    public class HocSinhManagementController : Controller
    {
        private readonly PortalContext db = new PortalContext();

        // GET: Admin/HocSinhManagement
        public ActionResult Index(int? page, string keysearch = "")
        {
            ViewBag.keysearch = keysearch;

            var models = (from ad in db.HocSinhs
                          where string.IsNullOrEmpty(keysearch)
                            || ad.TenHS.Contains(keysearch)
                          select new HocSinhEntity()
                          {
                              HocSinhID = ad.HocSinhID,
                              TaiKhoanID = ad.TaiKhoanID,
                              TenHS = ad.TenHS,
                              NgaySinh = ad.NgaySinh,
                              GioiTinh = ad.GioiTinh,
                              Email = ad.Email,
                              UserName = ad.TaiKhoan.UserName
                          }).OrderByDescending(x => x.HocSinhID).ToPagedList(page ?? 1, 15);

            ViewBag.stt = (models.PageNumber - 1) * 15 + 1;

            return View(models);
        }

        // GET: Admin/HocSinhManagement/Create
        public ActionResult Create()
        {
            ViewBag.TaiKhoanID = new SelectList(db.TaiKhoans.Where(x => x.HocSinhs.Count > 0 && x.GiaoViens.Count > 0), "TaiKhoanID", "UserName");

            return View();
        }

        // POST: Admin/HocSinhManagement/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        public ActionResult Create(HocSinh_TaiKhoan_Model model, string strNgaySinh)
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
                var hocSinh = new HocSinh
                {
                    TenHS = model.TenHS,
                    NgaySinh = model.NgaySinh,
                    GioiTinh = model.GioiTinh,
                    Email = model.Email
                };

                var taiKhoan = new TaiKhoan
                {
                    UserName = model.UserName,
                    Password = model.Password,
                    Role = "student"
                };
                taiKhoan.HocSinhs.Add(hocSinh);
                db.TaiKhoans.Add(taiKhoan);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(model);
        }

        // GET: Admin/HocSinhManagement/Edit/5
        public ActionResult Edit(int id)
        {
            var viewModel = new HocSinh_TaiKhoan_Model();

            var hocSinh = db.HocSinhs.Find(id);
            viewModel.HocSinhID = id;
            viewModel.TaiKhoanID = hocSinh.TaiKhoanID;
            viewModel.TenHS = hocSinh.TenHS;
            viewModel.NgaySinh = hocSinh.NgaySinh;
            viewModel.GioiTinh = hocSinh.GioiTinh;
            viewModel.Email = hocSinh.Email;

            var taiKhoan = new TaiKhoan();
            if (hocSinh.TaiKhoanID != null)
            {
                taiKhoan = db.TaiKhoans.Find(hocSinh.TaiKhoanID);
                viewModel.UserName = taiKhoan.UserName;
                viewModel.Role = taiKhoan.Role;
            }

            return View(viewModel);
        }

        // POST: Admin/HocSinhManagement/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(HocSinh_TaiKhoan_Model model, string strNgaySinh)
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

                var hocsinh = db.HocSinhs.Find(model.HocSinhID);
                hocsinh.TenHS = model.TenHS;
                hocsinh.NgaySinh = model.NgaySinh;
                hocsinh.GioiTinh = model.GioiTinh;
                hocsinh.Email = model.Email;

                db.Entry(hocsinh).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            //ViewBag.TaiKhoanID = new SelectList(db.TaiKhoans, "TaiKhoanID", "UserName", viewModel.TaiKhoanID);
            return View(model);
        }

        // GET: Admin/HocSinhManagement/Delete/5
        public ActionResult Delete(int id)
        {
            var hocSinh = db.HocSinhs.Find(id);
            if (hocSinh.TaiKhoanID != null)
            {
                var taiKhoan = db.TaiKhoans.Find(hocSinh.TaiKhoanID);
                db.TaiKhoans.Remove(taiKhoan);
            }

            db.HocSinhs.Remove(hocSinh);
            db.SaveChanges();

            return RedirectToAction("Index");
        }
    }
}
