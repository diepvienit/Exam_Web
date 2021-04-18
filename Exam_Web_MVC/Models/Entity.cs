namespace Exam_Web_MVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class DeThiEntity
    {

        public int DeThiID { get; set; }
        public int? MonHocID { get; set; }
        public string TenDeThi { get; set; }
        public int? ThoiGianLamBai { get; set; }
        public DateTime? ThoiGianBatDauLamBai { get; set; }
        public string LoaiDe { get; set; }
        public int? GiaoVienID { get; set; }
        public int? Status { get; set; }
        public string Comment { get; set; }
        public string GiaoVien { get; set; }
        public string MonHoc { get; set; }
    }

    public partial class CauHoiEntity
    {
        public int CauHoiID { get; set; }
        public string NoiDungCauHoi { get; set; }
        public string Answer_A { get; set; }
        public string Answer_B { get; set; }
        public string Answer_C { get; set; }
        public string Answer_D { get; set; }
        public string CauTraLoiDung { get; set; }
        public int? DoKhoID { get; set; }
        public int? MonHocID { get; set; }
        public string DoKho { get; set; }
        public string MonHoc { get; set; }
    }
}
