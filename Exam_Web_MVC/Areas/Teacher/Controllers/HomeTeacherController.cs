using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Exam_Web_MVC.Areas.Teacher.Controllers
{
    public class HomeTeacherController : Controller
    {
        // GET: Teacher/HomeTeacher
        public ActionResult Index()
        {
            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }
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