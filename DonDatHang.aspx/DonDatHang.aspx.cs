using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonDatHang.aspx
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //khởi tạo dữ liệu
                ddlLB.Items.Add(new ListItem("XiaoMi", "01"));
                ddlLB.Items.Add(new ListItem("SamSung", "02"));
                ddlLB.Items.Add(new ListItem("Nokia", "03"));
                ddlLB.Items.Add(new ListItem("IPhone", "04"));
            }
        }

        protected void btnSL_Click(object sender, EventArgs e)
        {
            bool checkExist = false;
            char[] delim = { '(', ')' };
            int soluong;
            //b1 kiểm tra tồn tại
            for(int i =0; i < lbtBDD.Items.Count; i++)
            {
                string itemText = lbtBDD.Items[i].Text;
                if (itemText.Contains(ddlLB.SelectedItem.Text))
                {
                    //xử lý cộng dồn số lượng
                    string[] arr = itemText.Split(delim);
                    soluong = int.Parse(txtSL.Text) + int.Parse(arr[1]);
                    //thay thế item tại vị trí 1
                    lbtBDD.Items[i].Text = $"{ddlLB.SelectedItem.Text} ({soluong})";
                    checkExist = true;
                    break;
                }
            }
            //b2
            if (!checkExist)
            {
                string data = $"{ddlLB.SelectedItem.Text} ({txtSL.Text})";
                lbtBDD.Items.Add(data);
            }
            
        }

        protected void btXoa_Click(object sender, EventArgs e)
        {
            //int index = lbtBDD.SelectedIndex;
            //lbtBDD.Items.RemoveAt(index);

            for (int i = lbtBDD.Items.Count -1;i >=0; i--)
            {
                if (lbtBDD.Items[i].Selected)
                {
                    lbtBDD.Items.RemoveAt(i);
                }
            }

        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            string kq = "";
            //b1.thu thập thông tin
            kq += "<h2 class='text-center'> HOÁ ĐƠN ĐẶT HÀNG</h2>";
            kq += "<div class='border border-primary'>";
            kq += "Khách hàng: <i>" + txtKH.Text + "</i><br>";
            kq += "Địa chỉ: <i>" + txtDC.Text + "</i><br>";
            kq += "Mã số thuế: <i>" + txtMST.Text + "</i><br><br>";

            kq += "<b>Đặt các điện thoại sau: </b>";
            kq += "<table class='table table-bordered'>";
            char[] delim = { '(',')' };
            foreach (ListItem item in lbtBDD.Items)
            {
                string[] arr = item.Text.Split(delim);
                kq += "<tr>";
                kq += $"<td>{arr[0]}</td><td>{arr[1]}</td>";
                kq += "</tr>";
            }
            kq += "</table>";
            kq += "</div>";
            //b2.gửi thông tin về client
            lbKQ.Text = kq;
        }

        protected void lbtBDD_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}