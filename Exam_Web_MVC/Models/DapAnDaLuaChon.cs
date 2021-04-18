namespace Exam_Web_MVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DapAnDaLuaChon")]
    public partial class DapAnDaLuaChon
    {
        [Key]
        public int KetQuaThiID { get; set; }

        public int? LanThiID { get; set; }

        public int? CauHoiID { get; set; }

        [StringLength(1)]
        public string DapAnDaChon { get; set; }

        public virtual CauHoi CauHoi { get; set; }

        public virtual LanThi LanThi { get; set; }
    }
}
