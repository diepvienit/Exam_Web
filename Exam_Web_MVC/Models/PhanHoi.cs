namespace Exam_Web_MVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhanHoi")]
    public partial class PhanHoi
    {
        public int PhanHoiID { get; set; }

        [StringLength(500)]
        public string NoiDung { get; set; }

        public int? HocSinhID { get; set; }

        [StringLength(20)]
        public string TrangThai { get; set; }

        public virtual HocSinh HocSinh { get; set; }
    }
}
