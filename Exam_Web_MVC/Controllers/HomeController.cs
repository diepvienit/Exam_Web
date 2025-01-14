﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Exam_Web_MVC.Models;

namespace Exam_Web_MVC.Controllers
{
    public class HomeController : BaseController
    {
        private readonly PortalContext db = new PortalContext();
        // GET: Home
        public ActionResult Index()
        {
            //if (!CheckLogin())
            //{
            //    return Redirect("/Home/Login");
            //}

            ViewBag.monhoc = db.MonHocs.ToList();

            return View(db.DeThis.OrderByDescending(x => x.DeThiID).Where(x=>x.Status == 2).ToList());
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(TaiKhoan taiKhoan)
        {
            if (ModelState.IsValid)
            {
                TaiKhoan user = db.TaiKhoans.FirstOrDefault(x => x.UserName == taiKhoan.UserName && x.Password == taiKhoan.Password);
                if (user != null)
                {
                    Session["TaiKhoanID_session"] = user.TaiKhoanID;
                    Session["UserName"] = user.UserName;
                    if (user.Role == "admin")
                    {
                        return RedirectToAction("Index", "HomeAdmin", new { Area = "Admin" });
                    }
                    else if (user.Role == "student")
                    {
                        return RedirectToAction("Index", "Home");
                    }
                    else if (user.Role == "teacher")
                    {
                        return RedirectToAction("Index", "HomeTeacher", new { Area = "Teacher" });
                    }
                }
            }
            return View();
        }

        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(HocSinh_TaiKhoan_Model viewModel)
        {
            if (ModelState.IsValid)
            {
                var taiKhoan = new TaiKhoan
                {
                    UserName = viewModel.UserName,
                    Password = viewModel.Password,
                    Role = "student"
                };

                var hocSinh = new HocSinh
                {
                    TenHS = viewModel.TenHS,
                    NgaySinh = viewModel.NgaySinh,
                    GioiTinh = viewModel.GioiTinh,
                    Email = viewModel.Email
                };

                taiKhoan.HocSinhs.Add(hocSinh);
                db.TaiKhoans.Add(taiKhoan);
                db.SaveChanges();

                return RedirectToAction("Login");
            }
            return View(viewModel);
        }

        public ActionResult ListExam(int id)
        {
            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }
            var listDeThiDetail = (from ad in db.DeThis
                                   where ad.MonHocID == id && ad.Status == 2
                                   select new DeThiDetail_Model()
                                   {
                                       DeThiID = ad.DeThiID,
                                       MonHocID = ad.MonHocID,
                                       TenDeThi = ad.TenDeThi,
                                       ThoiGianLamBai = ad.ThoiGianLamBai,
                                       ThoiGianBatDauLamBai = ad.ThoiGianBatDauLamBai,
                                       LoaiDe = ad.LoaiDe,
                                       GiaoVienID = ad.GiaoVienID,
                                       NumberQuestion = ad.CauHois.Count
                                   }).ToList();

            ViewBag.DeThi = listDeThiDetail;
            ViewBag.MonHoc = db.MonHocs.Find(id);
            return View();
        }

        public ActionResult Logout()
        {
            Session["TaiKhoanID_session"] = null;
            return RedirectToAction("Login", "Home");
        }

        public ActionResult UserDetail()
        {
            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }
            var userId = Convert.ToInt32(Session["TaiKhoanID_session"]);
            UserDetail_Model model = new UserDetail_Model();
            var hocSinh = db.HocSinhs.FirstOrDefault(x => x.TaiKhoanID == userId);
            var taiKhoan = db.TaiKhoans.FirstOrDefault(x => x.TaiKhoanID == userId);

            model.HocSinhID = hocSinh.HocSinhID;
            model.TenHS = hocSinh.TenHS;
            model.Email = hocSinh.Email;
            model.Username = taiKhoan.UserName;
            model.Role = taiKhoan.Role;
            model.GioiTinh = hocSinh.GioiTinh;
            DateTime ngaySinh = (DateTime)hocSinh.NgaySinh;
            model.NgaySinh = ngaySinh.ToString("yyyy-MM-dd");

            return View(model);
        }

        [HttpPost]
        public ActionResult UserDetail(UserDetail_Model model)
        {
            var hocSinh = db.HocSinhs.FirstOrDefault(x => x.TaiKhoanID == (int)Session["TaiKhoanID_session"]);
            var taiKhoan = db.TaiKhoans.FirstOrDefault(x => x.TaiKhoanID == (int)Session["TaiKhoanID_session"]);

            hocSinh.TenHS = model.TenHS;
            hocSinh.Email = model.Email;
            hocSinh.GioiTinh = model.GioiTinh;
            hocSinh.NgaySinh = DateTime.ParseExact(model.NgaySinh, "yyyy-MM-dd", null);

            db.Entry(hocSinh).State = EntityState.Modified;
            db.SaveChanges();

            model.Role = taiKhoan.Role;
            model.Username = taiKhoan.UserName;
            //Quy uoc success la 1 
            ViewBag.Message = "1";
            return View(model);
        }

        public ActionResult ChangePassword()
        {
            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }
            return View();
        }

        [HttpPost]
        public ActionResult ChangePassword(ChangePassword_Model model)
        {
            var taiKhoan = db.TaiKhoans.FirstOrDefault(x => x.TaiKhoanID == (int)Session["TaiKhoanID_session"]);
            if (taiKhoan.Password == model.OldPassword)
            {
                taiKhoan.Password = model.NewPassword;

                db.Entry(taiKhoan).State = EntityState.Modified;
                db.SaveChanges();

                ViewBag.AlertMessage = "1";
                return View();
            }
            else
            {
                ViewBag.AlertMessage = "0";
                return View();
            }
        }

        public ActionResult Contact()
        {
            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }
            return View();
        }

        [HttpPost]
        public ActionResult Contact(LienHe lienHe)
        {
            lienHe.NgayGui = DateTime.Now;

            if (int.TryParse(Convert.ToString(Session["TaiKhoanID_session"]), out int taiKhoanId))
            {
                var hocSinh = db.HocSinhs.FirstOrDefault(x => x.TaiKhoanID == taiKhoanId);

                lienHe.HocSinhID = hocSinh.HocSinhID;

                db.LienHes.Add(lienHe);
                db.SaveChanges();

                ViewBag.Message = "1";
                return View();
            }
            else
            {
                return Redirect("/Home/Login");
            }
        }

        public ActionResult ListResult()
        {
            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }
            int.TryParse(Session["TaiKhoanID_session"].ToString(), out int taiKhoanId);
            var hocSinh = db.HocSinhs.FirstOrDefault(x => x.TaiKhoanID == taiKhoanId);

            if (hocSinh == null)
            {
                return Redirect("/Home/Login");
            }

            ViewBag.TenHS = hocSinh.TenHS;
            var listResults = new List<ListResult_Model>();
            var listLanThi = db.LanThis.Where(x => x.HocSinhID == hocSinh.HocSinhID).ToList();

            for (int i = 0; i < listLanThi.Count(); i++)
            {
                var model = new ListResult_Model
                {
                    MonHoc = listLanThi[i].DeThi.MonHoc.TenMH,
                    TenDeThi = listLanThi[i].DeThi.TenDeThi,
                    LoaiDe = listLanThi[i].DeThi.LoaiDe,
                    LanThi = (int)listLanThi[i].LanThiSo,
                    ThoiGianLamBai = listLanThi[i].ThoiGianLamBai.ToString(),
                    ThoiGianNopBai = listLanThi[i].ThoiGianNopBai.ToString(),
                    Diem = listLanThi[i].KetQuaThi ?? 0
                };
                listResults.Add(model);
            }
            return View(listResults);
        }
    }
}