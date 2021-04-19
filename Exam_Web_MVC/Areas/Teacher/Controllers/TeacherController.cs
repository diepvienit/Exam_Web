using Exam_Web_MVC.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Exam_Web_MVC.Areas.Teacher.Controllers
{
    public class TeacherController : Controller
    {
        private readonly PortalContext db = new PortalContext();
        // GET: Teacher/Teacher
        public ActionResult UserInfo()
        {
            var userId = Convert.ToInt32(Session["TaiKhoanID_session"]);
            if (userId == 0)
            {
                return Redirect("/Home/Login");
            }

            var userInfo = (from ad in db.GiaoViens
                            where ad.TaiKhoanID == userId
                            select new GiaoVienEntity()
                            {
                                GiaoVienID = ad.GiaoVienID,
                                TaiKhoanID = ad.TaiKhoanID,
                                TenGV = ad.TenGV,
                                NgaySinh = ad.NgaySinh,
                                GioiTinh = ad.GioiTinh,
                                Email = ad.Email,
                                MonHocID = ad.MonHocID,
                                HocViID = ad.HocViID,
                                HocVi = ad.HocVi.TenHocVi,
                                MonHoc = ad.MonHoc.TenMH
                            }).FirstOrDefault();

            return View(userInfo);
        }

        public ActionResult ChangePass()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ChangePass(string oldPass, string newPass, string confirmPass)
        {
            if (confirmPass != newPass)
            {
                ViewBag.errorMess = "Mật khẩu xác nhận không đúng!";
                return View();
            }
            var userName = Session["UserName"].ToString();
            var account = db.TaiKhoans.FirstOrDefault(x => x.UserName == userName && x.Password == oldPass);

            if (account == null)
            {
                ViewBag.errorMess = "Mật khẩu không đúng!";
                return View();
            }

            account.Password = newPass;
            db.Entry(account).State = EntityState.Modified;
            db.SaveChanges();

            return Redirect("/Home/Login");
        }
    }
}