namespace Exam_Web_MVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DeThi")]
    public partial class DeThi
    {
        public DeThi()
        {
            LanThis = new HashSet<LanThi>();
            CauHois = new HashSet<CauHoi>();
        }

        public int DeThiID { get; set; }

        public int? MonHocID { get; set; }

        [StringLength(200)]
        public string TenDeThi { get; set; }

        public int? ThoiGianLamBai { get; set; }

        public DateTime? ThoiGianBatDauLamBai { get; set; }

        [StringLength(20)]
        public string LoaiDe { get; set; }

        public int? GiaoVienID { get; set; }

        public int? Status { get; set; }

        [StringLength(255)]
        public string Comment { get; set; }

        public virtual GiaoVien GiaoVien { get; set; }

        public virtual MonHoc MonHoc { get; set; }

        public virtual ICollection<LanThi> LanThis { get; set; }

        public virtual ICollection<CauHoi> CauHois { get; set; }
    }
}
