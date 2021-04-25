using Exam_Web_MVC.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;

namespace Exam_Web_MVC.Controllers
{
    public class ExamController : BaseController
    {
        private readonly PortalContext db = new PortalContext();
        // GET: Exam
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult DetailExam(int id)
        {
            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }
            ViewBag.DeThi = db.DeThis.Find(id);
            return View();
        }

        public ActionResult DoExam(int id)
        {
            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }
            var dethi = db.DeThis.Find(id);
            var taikhoanid = (int)Session["TaiKhoanID_session"];

            ViewBag.DeThi = dethi;
            ViewBag.SoCauHoi = dethi.CauHois.Count();

            var hocsinh = db.HocSinhs.FirstOrDefault(x => x.TaiKhoanID == taikhoanid);

            int hocSinhID = hocsinh.HocSinhID;
            ViewBag.TenHS = hocsinh.TenHS;

            var viewModel = new DoExam_Model();

            var cauHois = dethi.CauHois.ToList();

            viewModel.DeThiID = id;

            for (int i = 0; i < cauHois.Count(); i++)
            {
                var question = new Question_Model
                {
                    CauHoiID = cauHois[i].CauHoiID,
                    NoiDungCauHoi = cauHois[i].NoiDungCauHoi,
                    Answer_A = cauHois[i].Answer_A,
                    Answer_B = cauHois[i].Answer_B,
                    Answer_C = cauHois[i].Answer_C,
                    Answer_D = cauHois[i].Answer_D,
                    CauTraLoiDung = cauHois[i].CauTraLoiDung,
                    DoKho = cauHois[i].DoKho.TenDoKho
                };

                viewModel.Questions.Add(question);
            }
            return View(viewModel);
        }

        [HttpPost]
        public ActionResult DoExam(DoExam_Model viewModel)
        {

            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }

            var taikhoanid = (int)Session["TaiKhoanID_session"];
            var hocsinh = db.HocSinhs.FirstOrDefault(x => x.TaiKhoanID == taikhoanid);

            var hocSinhID = hocsinh.HocSinhID;

            var lanThi = new LanThi
            {
                HocSinhID = hocsinh.HocSinhID,
                DeThiID = viewModel.DeThiID,
                LanThiSo = hocsinh.LanThis.Count,
                ThoiGianLamBai = viewModel.TimePast,
                ThoiGianNopBai = DateTime.Now
            };

            for (int i = 0; i < viewModel.Questions.Count; i++)
            {
                var dapAnDaLuaChon = new DapAnDaLuaChon
                {
                    CauHoiID = viewModel.Questions[i].CauHoiID,
                    DapAnDaChon = viewModel.Questions[i].SelectedAnswer
                };
                //add ket qua thi
                lanThi.DapAnDaLuaChons.Add(dapAnDaLuaChon);
            }

            //add lan thi
            db.LanThis.Add(lanThi);
            db.SaveChanges();
            return RedirectToAction("Result", new { lanthiid = lanThi.LanThiID });
        }

        public ActionResult Result(int lanthiid)
        {
            if (!CheckLogin())
            {
                return Redirect("/Home/Login");
            }

            var lanThi = db.LanThis.Find(lanthiid);
            var listAnswer = lanThi.DapAnDaLuaChons.ToList();
            var lstCauHoiId = listAnswer.Select(x => x.CauHoiID).ToList();
            var lstCauHoi = db.CauHois.Where(x => lstCauHoiId.Contains(x.CauHoiID)).ToList();

            int NumberCorrectAnser = 0;
            for (int i = 0; i < listAnswer.Count(); i++)
            {
                string correctAnswer = lstCauHoi.FirstOrDefault(x => x.CauHoiID == listAnswer[i].CauHoiID).CauTraLoiDung;
                if (listAnswer[i].DapAnDaChon == correctAnswer)
                {
                    NumberCorrectAnser++;
                }
            }

            var taikhoanid = (int)Session["TaiKhoanID_session"];

            var hocSinh = db.HocSinhs.FirstOrDefault(x => x.TaiKhoanID == taikhoanid);
            var hocSinhID = hocSinh.HocSinhID;
            var dethi = db.DeThis.Find(lanThi.DeThiID);
            ViewBag.TenDe = dethi.TenDeThi;
            ViewBag.TenHocSinh = hocSinh.TenHS;

            var diem = (decimal)NumberCorrectAnser * 10 / dethi.CauHois.Count;

            diem = Math.Round(diem, 2);
            ViewBag.SoCauDung = NumberCorrectAnser;
            ViewBag.TongSoCau = dethi.CauHois.Count;
            ViewBag.Diem = diem;

            //update diem cho lanthi
            lanThi.KetQuaThi = Convert.ToDouble(diem);


            db.Entry(lanThi).State = EntityState.Modified;
            db.SaveChanges(); 

            return View();
        }
    }
}