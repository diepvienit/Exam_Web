using Exam_Web_Core;
using Exam_Web_Core.Repositories;
using Exam_Web_Core.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace Exam_Web_MVC.Controllers
{
    public class BaseController : Controller
    {
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