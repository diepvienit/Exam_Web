using Exam_Web_MVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Exam_Web_MVC.Areas.Admin.Controllers
{
    public class HomeAdminController : Controller
    {
        private readonly PortalContext db = new PortalContext();
        // GET: Admin/Home
        public ActionResult Index()
        {
            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }
            var now = DateTime.Now;
            var day = now.Day;
            var month = now.Month;
            var year = now.Year;
            // Lấy tổng số bài thi
            ViewBag.countBaiThi = db.DeThis.Count();
            // Lấy tổng số bài thi hôm nay
            ViewBag.countBaiThiToDay = db.DeThis.Count(x => x.DateCreate.Year == year && x.DateCreate.Month == month && x.DateCreate.Day == day); ;
            // Lấy tổng số giáo viên
            ViewBag.countGiaoVien = db.GiaoViens.Count();
            // Lấy tổng số học sinh
            ViewBag.countHocSinh = db.HocSinhs.Count();

            return View();

        }
        public bool CheckLogin()
        {
            if (Session["TaiKhoanID_session"] == null || string.IsNullOrEmpty(Session["TaiKhoanID_session"].ToString())
                || Session["UserName"] == null || string.IsNullOrEmpty(Session["UserName"].ToString()))
            {
                return false;
            }

            return true;
        }
    }
}