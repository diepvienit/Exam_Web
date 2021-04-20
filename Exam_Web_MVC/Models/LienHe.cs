namespace Exam_Web_MVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LienHe")]
    public partial class LienHe
    {
        public int LienHeID { get; set; }

        [StringLength(50)]
        public string HoVaTen { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        public string PhanHoi { get; set; }

        public DateTime? NgayGui { get; set; }
        public int HocSinhID { get; set; }
    }
}
