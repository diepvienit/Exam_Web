using Exam_Web_MVC.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Exam_Web_MVC.Areas.Admin.Controllers
{
    public class ContactController : Controller
    {
        private readonly PortalContext db = new PortalContext();
        // GET: Admin/Contact
        public ActionResult Index(int? page, string keysearch = "")
        {

            ViewBag.keysearch = keysearch;

            var models = (from ad in db.LienHes
                          where string.IsNullOrEmpty(keysearch)
                            || ad.PhanHoi.Contains(keysearch)
                          select new LienHeEntity()
                          {
                              LienHeID = ad.LienHeID,
                              HoVaTen = ad.HoVaTen,
                              Email = ad.Email,
                              PhanHoi = ad.PhanHoi,
                              NgayGui = ad.NgayGui,
                              HocSinhID = ad.HocSinhID,
                          }).OrderByDescending(x => x.LienHeID).ToPagedList(page ?? 1, 15);

            return View(models);
        }
    }
}