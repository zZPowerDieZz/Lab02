<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="DonDatHang.aspx.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="w-50 m-auto border border-success ">
            <div class="text-center"><asp:Label ID="lbDDH" Font-Size="15pt" runat="server" Text="Label" BackColor="#99FF66" BorderStyle="Solid" BorderColor="#00CC66" ForeColor="#009933" Width="680px">ĐƠN ĐẶT HÀNG            </asp:Label></div>
            <div class="row mb-2">
                <div class="col-4 ">
                    Khách hàng: 
                </div>
                <div class="col-8">
                   <asp:TextBox ID="txtKH" runat="server" CssClass ="form-control"  Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvKH" runat="server" ErrorMessage="Tên khách hàng chưa nhập" Text="(*)" ControlToValidate="txtKH" ForeColor="#ff0000"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-4">
                    Địa chỉ: 
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtDC" runat="server" CssClass ="form-control" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDC" runat="server" ErrorMessage="Địa chỉ chưa nhập" Text="(*)" ControlToValidate="txtDC" ForeColor="#ff0000"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-4">
                     Mã số thuê:
                </div>
                <div class="col-8" >
                    <asp:TextBox ID="txtMST" runat="server" CssClass ="form-control"  Height="30px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMST" runat="server" ErrorMessage="Thuế chưa nhập" Text="(*)" ControlToValidate="txtMST" ForeColor="#ff0000"></asp:RequiredFieldValidator>
                </div>
            </div>
            <hr/>
            <div class="form-inline ">
                <div class="col-6 border-bottom border-right border-top border-success" >
                    <asp:Label ID="lbCLB" runat="server" Text="Label" ForeColor="#009933" Font-Bold> Chọn các loại điện thoại sau:</asp:Label>
                    <br/>
                    <asp:DropDownList ID="ddlLB" runat="server" CssClass="form-control" Width="250px" Height="40px"></asp:DropDownList>
                    <br/>
                    
                    Số lượng: <asp:TextBox ID="txtSL" runat="server" CssClass="form-control" Width="70px" Height="30px"></asp:TextBox> cái
                    <asp:RequiredFieldValidator ID="rfvSL" runat="server" ErrorMessage="Không được bỏ trống" Text="(*)" ForeColor="#ff0000" ControlToValidate="txtSL"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvSL" runat="server" ErrorMessage="Số lượng không hợp lệ" ControlToValidate="txtSL" ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0">(*)</asp:CompareValidator>
                    <br/>
                    <asp:Button ID="btnSL" runat="server" Text=">" CssClass="form-control" OnClick="btnSL_Click" />
                </div>
                <div class="col-6 text-center border-bottom border-top border-success">
                    
                    <asp:Label ID="lbDSB" runat="server" Text="Label" ForeColor="#009933" Font-Bold>Danh sách bánh được đặt:</asp:Label>
                    <br/>
                    <asp:ListBox ID="lbtBDD" runat="server" SelectionMode="Multiple" CssClass="form-control" Width="250px" Height="108px" OnSelectedIndexChanged="lbtBDD_SelectedIndexChanged"></asp:ListBox>
                    <asp:ImageButton ID="btXoa" ImageUrl="~/Images/delete.gif"  runat="server"  OnClick="btXoa_Click" />
                   <%-- <asp:Button ID="btXoa" runat="server" Text="Xoá" OnClick="btXoa_Click" />--%>
                </div>
            </div>
            <hr/>
            <div >
                <div class="text-center">
                     <asp:Button ID="btnIn" runat="server" Text="In đơn đặt hàng" OnClick="btnIn_Click" CssClass="btn btn-primary" /><br>
                </div>
                <asp:Label ID="lbKQ" runat="server" Text="" ForeColor="#ff0000"></asp:Label>
            </div>
            <asp:ValidationSummary ID="vsLoi" runat="server" ForeColor="#ff0000"/>
        </div>
    </form>
</body>
</html>
