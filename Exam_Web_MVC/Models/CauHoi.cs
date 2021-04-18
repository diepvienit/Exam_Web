namespace Exam_Web_MVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CauHoi")]
    public partial class CauHoi
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CauHoi()
        {
            DapAnDaLuaChons = new HashSet<DapAnDaLuaChon>();
            DeThis = new HashSet<DeThi>();
        }

        public int CauHoiID { get; set; }

        [StringLength(500)]
        public string NoiDungCauHoi { get; set; }

        [StringLength(200)]
        public string Answer_A { get; set; }

        [StringLength(200)]
        public string Answer_B { get; set; }

        [StringLength(200)]
        public string Answer_C { get; set; }

        [StringLength(200)]
        public string Answer_D { get; set; }

        [StringLength(1)]
        public string CauTraLoiDung { get; set; }

        public int? DoKhoID { get; set; }

        public int? MonHocID { get; set; }

        public virtual DoKho DoKho { get; set; }

        public virtual MonHoc MonHoc { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DapAnDaLuaChon> DapAnDaLuaChons { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DeThi> DeThis { get; set; }
    }
}
