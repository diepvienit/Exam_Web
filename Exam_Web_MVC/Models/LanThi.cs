namespace Exam_Web_MVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LanThi")]
    public partial class LanThi
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LanThi()
        {
            DapAnDaLuaChons = new HashSet<DapAnDaLuaChon>();
        }

        public int LanThiID { get; set; }

        public int? HocSinhID { get; set; }

        public int? DeThiID { get; set; }

        public int? LanThiSo { get; set; }

        public decimal? KetQuaThi { get; set; }

        public int? ThoiGianLamBai { get; set; }

        public DateTime? ThoiGianNopBai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DapAnDaLuaChon> DapAnDaLuaChons { get; set; }

        public virtual DeThi DeThi { get; set; }
        


        public virtual HocSinh HocSinh { get; set; }
    }
}
