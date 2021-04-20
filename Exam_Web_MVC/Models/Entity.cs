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
        public string Image { get; set; }
    }

    public partial class GiaoVienEntity
    {
        public int GiaoVienID { get; set; }
        public int? TaiKhoanID { get; set; }
        public string TenGV { get; set; }
        public DateTime? NgaySinh { get; set; }
        public bool? GioiTinh { get; set; }
        public string Email { get; set; }
        public int? MonHocID { get; set; }
        public int? HocViID { get; set; }
        public string HocVi { get; set; }
        public string MonHoc { get; set; }
    }

    public partial class HocSinhEntity
    {
        public int HocSinhID { get; set; }
        public int? TaiKhoanID { get; set; }
        public string TenHS { get; set; }
        public DateTime? NgaySinh { get; set; }
        public bool? GioiTinh { get; set; }
        public string Email { get; set; }
        public string KetQua { get; set; }
        public int? ThoiGianLamBai { get; set; }
        public DateTime? ThoiGianNopBai { get; set; }
    }

    public class HocSinh_TaiKhoan_Model
    {
        //HocSinh
        public int HocSinhID { get; set; }
        public Nullable<int> TaiKhoanID { get; set; }
        public string TenHS { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public Nullable<bool> GioiTinh { get; set; }
        public string Email { get; set; }

        //TaiKhoan
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }
    }

    public class DeThiDetail_Model
    {
        public int DeThiID { get; set; }
        public Nullable<int> MonHocID { get; set; }
        public string TenDeThi { get; set; }
        public Nullable<int> ThoiGianLamBai { get; set; }
        public Nullable<System.DateTime> ThoiGianBatDauLamBai { get; set; }
        public string LoaiDe { get; set; }
        public Nullable<int> GiaoVienID { get; set; }
        public int NumberQuestion { get; set; }
    }

    public class UserDetail_Model
    {
        public int HocSinhID { get; set; }
        public string TenHS { get; set; }
        public string Email { get; set; }
        public string Username { get; set; }
        public string Role { get; set; }
        public bool? GioiTinh { get; set; }
        public string NgaySinh { get; set; }
    }

    public class ChangePassword_Model
    {
        public string OldPassword { get; set; }
        public string NewPassword { get; set; }
        public string ConfirmNewPassword { get; set; }
    }

    public class ListResult_Model
    {
        public string MonHoc { get; set; }
        public string TenDeThi { get; set; }
        public string LoaiDe { get; set; }
        public int LanThi { get; set; }
        public string ThoiGianLamBai { get; set; }
        public string ThoiGianNopBai { get; set; }
        public double Diem { get; set; }
    }

    public partial class LienHeEntity
    {
        public int LienHeID { get; set; }
        public string HoVaTen { get; set; }
        public string Email { get; set; }
        public string PhanHoi { get; set; }
        public DateTime? NgayGui { get; set; }
        public int HocSinhID { get; set; }
    }
}
