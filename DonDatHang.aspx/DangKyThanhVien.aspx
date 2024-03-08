    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="DonDatHang.aspx.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">HỒ SƠ ĐĂNG KÝ</h2>
            <div class="row border border-primary bg-info">
                <div class="col-md-8 p-2 text-center">
                    Thông tin đăng ký
                </div>
                <div class="col-md-4 pt-2 text-center border-left border-primary">
                    Hồ sơ đăng nhập
                </div>
            </div>
            <div class="row border border-primary">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-3">
                            Tên đăng nhập
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtTenDN" runat="server" CssClass="form-control" MaxLength="16"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txtTenDN" Display="Dynamic" ErrorMessage="Tên đăng nhập không được rỗng" Text="(*)" ForeColor="#ff0000"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revTenDN" runat="server" ErrorMessage="Tên đăng nhập không hợp lệ" Display="Dynamic" ControlToValidate="txtTenDN" CssClass="text-danger" ValidationExpression="[\w|\d|&|_|!]{8}[\w|\d|&|_|!]+" Text="(*)"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                     <div class="row">
                        <div class="col-md-3">
                            Mật khẩu
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtMK" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMK" runat="server" ErrorMessage="Mật khẩu không được rỗng" ControlToValidate="txtMK" Text="(*)" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            Nhập lại mật khẩu
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtNLMK" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNLMK" runat="server" ErrorMessage="Mật khẩu nhập lại không được rỗng" ControlToValidate="txtNLMK" Text="(*)" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvNLMK" runat="server" ErrorMessage="Mật khẩu nhập lại không đúng" ControlToCompare="txtMK" ControlToValidate="txtNLMK" Text="(*)" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="row mb-2 bg-info">
                        <div class="col-md-12 text-center">
                            Thông tin cá nhân
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Họ tên khách hàng
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Họ tên không được rỗng" Text="(*)" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Ngày sinh
                        </div>
                        <div class="col-md-9 form-inline">
                            <div class="form-inline">
                                <asp:DropDownList ID="ddlNgay" runat="server" CssClass="form-control"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvNgay" ControlToValidate="ddlNgay" runat="server" ErrorMessage="Chưa chọn ngày" Text="(*)" CssClass="text-danger"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddlThang" runat="server" CssClass="form-control"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvThang" ControlToValidate="ddlThang" runat="server" ErrorMessage="Chưa chọn tháng" Text="(*)" CssClass="text-danger"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddlNam" runat="server" CssClass="form-control"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvNam" ControlToValidate="ddlNam" runat="server" ErrorMessage="Chưa chọn năm" Text="(*)" CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-2">
                        <div class="col-md-3">
                            Email
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="revEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="(*)" CssClass="text-danger"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Thu nhập
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RangeValidator ID="rvThuNhap" Text="(*)" Display="Dynamic" CssClass="text-danger"
                                ControlToValidate="txtThuNhap" MinimumValue="1000000" MaximumValue="50000000"
                                runat="server" ErrorMessage="Thu nhập hợp lệ [1 - 50] triệu" Type="Integer"/>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Giới tính
                        </div>
                        <div class="col-md-9 ">
                            <asp:CheckBox ID="chkPhai" runat="server" Text="Nam" Checked="true"/>
                        </div>
                    </div>

                    <div class="row mb-2">
                        <div class="col-md-3">
                            Địa chỉ
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtDiaChi" TextMode="MultiLine" Rows="4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Điện thoại
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-12 text-center">
                            <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click" />

                        </div>
                    </div>
                </div>



                <div class="col-md-4">
                    <asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
                    <asp:ValidationSummary ID="vsLoi" runat="server" CssClass="text-danger" HeaderText="Danh sách lỗi" ShowMessageBox="true"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
