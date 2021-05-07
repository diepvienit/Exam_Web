using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Exam_Web_Core;
using Exam_Web_Core.Repositories;
using Exam_Web_Core.ViewModels;
using Exam_Web_MVC.Models;
using PagedList;

namespace Exam_Web_MVC.Areas.Admin.Controllers
{
    public class DeThiManagementController : Controller
    {
        private readonly PortalContext db = new PortalContext();

        // GET: Admin/DeThiManagement
        public ActionResult Index(int? page, string keysearch = "")
        {
            ViewBag.keysearch = keysearch;

            var models = (from ad in db.DeThis
                          where string.IsNullOrEmpty(keysearch)
                            || ad.TenDeThi.Contains(keysearch)
                            || ad.MonHoc.TenMH.Contains(keysearch)
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
            ViewBag.id = id;
            var deThi = db.DeThis.Find(id);
            ViewBag.CauHois = deThi.CauHois.ToList();

            return View(deThi);
        }

        public ActionResult Students(int id, int? page, string keysearch = "")
        {
            // Lấy danh sách lần thi thuộc bài thi
            var lanThis = db.LanThis.Where(x => x.DeThiID == id).OrderByDescending(x => x.ThoiGianNopBai).ToList();
            var hocSinhIds = lanThis.Select(x => x.HocSinhID).Distinct().ToList();
            var lanThiIds = lanThis.Select(x => x.LanThiID).Distinct().ToList();

            // Lấy danh sách học sinh
            var hocSinhs = (from ad in db.HocSinhs
                            where hocSinhIds.Contains(ad.HocSinhID)
                             && ad.TenHS.Contains(keysearch)
                            select new HocSinhEntity()
                            {
                                HocSinhID = ad.HocSinhID,
                                TaiKhoanID = ad.TaiKhoanID,
                                TenHS = ad.TenHS,
                                NgaySinh = ad.NgaySinh,
                                GioiTinh = ad.GioiTinh,
                                Email = ad.Email,
                            }).OrderByDescending(x => x.TenHS).ToPagedList(page ?? 1, 15);

            // Lấy danh sách câu hỏi
            var cauHois = db.DeThis.Find(id).CauHois.ToList();

            // Lấy danh sách đáp án đã chọn
            var dapAnDaChons = db.DapAnDaLuaChons.Where(x => lanThiIds.Contains(x.LanThiID.Value)).ToList();

            foreach (var item in hocSinhs)
            {
                var lanThi = lanThis.FirstOrDefault(x => x.HocSinhID == item.HocSinhID);
                if (lanThi != null)
                {
                    item.ThoiGianLamBai = lanThi.ThoiGianLamBai;
                    item.ThoiGianNopBai = lanThi.ThoiGianNopBai;
                    var dapAnDaChonOfUser = dapAnDaChons.Where(x => x.LanThiID == lanThi.LanThiID).ToList();

                    if (dapAnDaChonOfUser != null && dapAnDaChonOfUser.Count > 0)
                    {
                        var dapAnDung = 0;
                        foreach (var dachon in dapAnDaChonOfUser)
                        {
                            var cauHoi = cauHois.FirstOrDefault(x => x.CauHoiID == dachon.CauHoiID);
                            if (cauHoi != null && dachon.DapAnDaChon == cauHoi.CauTraLoiDung)
                            {
                                dapAnDung++;
                            }
                        }
                        item.KetQua = string.Format("{0}/{1}", dapAnDung, cauHois.Count);
                    }
                }
            }

            ViewBag.stt = (hocSinhs.PageNumber - 1) * 15 + 1;

            return View(hocSinhs);
        }

        [HttpPost, ActionName("ReviewFalse")]
        public ActionResult ReviewExam(int id, int status, string comment)
        {
            var dethi = db.DeThis.Find(id);

            if (dethi == null)
            {
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }

            dethi.Status = status;
            dethi.Comment = comment;

            db.Entry(dethi).State = EntityState.Modified;
            db.SaveChanges();

            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost, ActionName("ReviewTrue")]
        public ActionResult ReviewExamTrue(int id)
        {
            var dethi = db.DeThis.Find(id);

            if (dethi == null)
            {
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }

            dethi.Status = 2;

            db.Entry(dethi).State = EntityState.Modified;
            db.SaveChanges();

            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public ActionResult Delete(int id)
        {

            var entity = db.DeThis.Find(id);

            db.LanThis.RemoveRange(db.LanThis.Where(x=>x.DeThiID == id));
            db.DeThis.Remove(entity);

            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
