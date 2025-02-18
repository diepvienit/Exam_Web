﻿using System.Web.Mvc;

namespace Exam_Web_MVC.Areas.Teacher
{
    public class TeacherAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Teacher";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Teacher_default",
                "Teacher/{controller}/{action}/{id}",
                new {action = "Index", id = UrlParameter.Optional },
                new[] { "Exam_Web_MVC.Areas.Teacher.Controllers" }
            );
        }
    }
}