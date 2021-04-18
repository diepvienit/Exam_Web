using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace Exam_Web_MVC.Models
{
    public partial class PortalContext : DbContext
    {
        public PortalContext() : base("name=DefaultConnection")
        {
        }

        public virtual DbSet<CauHoi> CauHois { get; set; }
        public virtual DbSet<DapAnDaLuaChon> DapAnDaLuaChons { get; set; }
        public virtual DbSet<DeThi> DeThis { get; set; }
        public virtual DbSet<DoKho> DoKhoes { get; set; }
        public virtual DbSet<GiaoVien> GiaoViens { get; set; }
        public virtual DbSet<HocSinh> HocSinhs { get; set; }
        public virtual DbSet<HocVi> HocVis { get; set; }
        public virtual DbSet<LanThi> LanThis { get; set; }
        public virtual DbSet<LienHe> LienHes { get; set; }
        public virtual DbSet<MonHoc> MonHocs { get; set; }
        public virtual DbSet<PhanHoi> PhanHois { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CauHoi>()
                .Property(e => e.CauTraLoiDung)
                .IsUnicode(false);

            modelBuilder.Entity<CauHoi>()
                .HasMany(e => e.DapAnDaLuaChons)
                .WithOptional(e => e.CauHoi)
                .WillCascadeOnDelete();

            modelBuilder.Entity<CauHoi>()
                .HasMany(e => e.DeThis)
                .WithMany(e => e.CauHois)
                .Map(m => m.ToTable("DeThi_CauHoi").MapLeftKey("CauHoiID").MapRightKey("DeThiID"));

            modelBuilder.Entity<DapAnDaLuaChon>()
                .Property(e => e.DapAnDaChon)
                .IsUnicode(false);

            modelBuilder.Entity<DeThi>()
                .Property(e => e.LoaiDe)
                .IsUnicode(false);

            modelBuilder.Entity<DoKho>()
                .HasMany(e => e.CauHois)
                .WithOptional(e => e.DoKho)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GiaoVien>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<GiaoVien>()
                .HasMany(e => e.DeThis)
                .WithOptional(e => e.GiaoVien)
                .WillCascadeOnDelete();

            modelBuilder.Entity<HocSinh>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<HocSinh>()
                .HasMany(e => e.LanThis)
                .WithOptional(e => e.HocSinh)
                .WillCascadeOnDelete();

            modelBuilder.Entity<HocSinh>()
                .HasMany(e => e.PhanHois)
                .WithOptional(e => e.HocSinh)
                .WillCascadeOnDelete();

            modelBuilder.Entity<HocVi>()
                .HasMany(e => e.GiaoViens)
                .WithOptional(e => e.HocVi)
                .WillCascadeOnDelete();

            modelBuilder.Entity<LanThi>()
                .HasMany(e => e.DapAnDaLuaChons)
                .WithOptional(e => e.LanThi)
                .WillCascadeOnDelete();

            modelBuilder.Entity<LienHe>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<MonHoc>()
                .HasMany(e => e.CauHois)
                .WithOptional(e => e.MonHoc)
                .WillCascadeOnDelete();

            modelBuilder.Entity<MonHoc>()
                .HasMany(e => e.GiaoViens)
                .WithOptional(e => e.MonHoc)
                .WillCascadeOnDelete();

            modelBuilder.Entity<TaiKhoan>()
                .Property(e => e.UserName)
                .IsUnicode(false);

            modelBuilder.Entity<TaiKhoan>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<TaiKhoan>()
                .Property(e => e.Role)
                .IsUnicode(false);

            modelBuilder.Entity<TaiKhoan>()
                .HasMany(e => e.GiaoViens)
                .WithOptional(e => e.TaiKhoan)
                .WillCascadeOnDelete();

            modelBuilder.Entity<TaiKhoan>()
                .HasMany(e => e.HocSinhs)
                .WithOptional(e => e.TaiKhoan)
                .WillCascadeOnDelete();
        }
    }
}
