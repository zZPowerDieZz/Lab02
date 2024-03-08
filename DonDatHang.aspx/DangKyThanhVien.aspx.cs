using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonDatHang.aspx
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlNgay.Items.Add(new ListItem("--Chọn ngày--", ""));
                for(int i = 1; i <= 31; i++)
                {
                    ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
                ddlThang.Items.Add(new ListItem("--Chọn tháng--", ""));
                for (int i = 1; i <= 12; i++)
                {
                    ddlThang.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
                ddlNam.Items.Add(new ListItem("--Chọn năm--", ""));
                for (int i = 1960; i <= 2020; i++)
                {
                    ddlNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            //b1.Thu thập thông tin
            string kq = "<ul>";
                kq += $"<li><i>Họ tên khách hàng: {txtHoTen.Text}</i></li>";
                kq += $"<li><i>Tên đăng nhập: {txtTenDN.Text}</i></li>";
                kq += $"<li><i>Mật khẩu: {txtMK.Text}</i></li>";
                kq += $"<li><i>Ngày sinh: {ddlNgay.SelectedValue}/{ddlThang.SelectedValue}/{ddlNam.SelectedValue}</i></li>";
                kq += $"<li><i>Giới tính: {chkPhai.Text} </i></li>";
                kq += $"<li><i>Email: {txtEmail.Text}</i></li>";
                kq += $"<li><i>Địa chỉ: {txtDiaChi.Text}</i></li>";
                kq += $"<li><i>Điện thoại: {txtDienThoai.Text}</i></li>";
            kq += "</ul>";

            //b2 trả kết quả về client
            lbKetQua.Text = kq;
        }

        
    }
}