namespace Exam_Web_MVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("GiaoVien")]
    public partial class GiaoVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GiaoVien()
        {
            DeThis = new HashSet<DeThi>();
        }

        public int GiaoVienID { get; set; }

        public int? TaiKhoanID { get; set; }

        [StringLength(50)]
        public string TenGV { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgaySinh { get; set; }

        public bool? GioiTinh { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        public int? MonHocID { get; set; }

        public int? HocViID { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DeThi> DeThis { get; set; }

        public virtual HocVi HocVi { get; set; }

        public virtual MonHoc MonHoc { get; set; }

        public virtual TaiKhoan TaiKhoan { get; set; }
    }
}
