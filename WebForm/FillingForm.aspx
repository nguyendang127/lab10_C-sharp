<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FillingForm.aspx.cs" Inherits="WebForm.FillingForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        ul {
            margin-left: -20px;
        }

        label {
            font-size: 18px;
        }

        #radNu {
            margin-left: 60px;
        }

        .txt {
            width: 400px;
            padding: 5px;
            border-top: 1px solid black;
            border-left: 1px solid black;
        }

        #lblThongBao {
            color: forestgreen;
            font-weight: bold;
        }

        #ctn {
            width: 100%;
        }

        #form1 {
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>
<body>
    <div id="ctn">
        <form id="form1" runat="server">
            <h1>Đăng Ký Khách Hàng</h1>
            <h3 class="auto-style3" style="background-color: hsl(267, 66%, 54%); color: #fff; width: 65%"><strong>Thông tin đăng nhập</strong></h3>
            <asp:Table ID="Table1" runat="server" Height="123px" Width="65%">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                    <asp:Label runat="server">
                        Tên đăng nhập 
                    </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtTenDN" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rf_TenDN" runat="server" ErrorMessage="Tên đăng nhập không được rỗng" ControlToValidate="txtTenDN" ForeColor="Red" Display="Dynamic"> (*)</asp:RequiredFieldValidator>
                    </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell runat="server">
                    <asp:Label runat="server">
                        Mật khẩu 
                    </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtMK" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator ID="rf_MK" runat="server" ControlToValidate="txtMK" ErrorMessage="Mật khẩu không được rỗng" ForeColor="Red"> (*)</asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell runat="server">
                    <asp:Label runat="server">
                        Nhập lại mật khẩu 
                    </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtNhaplaiMK" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator ID="rf_Nhaplai" runat="server" ControlToValidate="txtNhaplaiMK" Display="Dynamic" ErrorMessage="Nhập lại mật khẩu không được rỗng" ForeColor="Red"> (*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cv_Nhaplai" runat="server" ControlToCompare="txtMK" ControlToValidate="txtNhaplaiMK" ErrorMessage="Mật khẩu nhập lại chưa đúng" Display="Dynamic" ForeColor="Red"> (*)</asp:CompareValidator>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>


            <h3 style="background-color: hsl(267, 66%, 54%); color: #fff; width: 65%"><strong>Chi tiết</strong></h3>

            <asp:Table ID="Table2" runat="server" Height="200px" Width="64%">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                    <asp:Label runat="server">Họ tên khách hàng </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtKH" runat="server" CssClass="txt"></asp:TextBox><asp:RequiredFieldValidator ID="rf_KH" runat="server" ControlToValidate="txtKH" ErrorMessage="Họ tên khách hàng không được rỗng" ForeColor="Red"> (*)</asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                     <asp:Label runat="server">
                         Ngày sinh 
                     </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="txt"></asp:TextBox><asp:CompareValidator ID="cv_Ngaysinh" runat="server" ControlToValidate="txtNgaySinh" ErrorMessage="Ngày sinh không hợp lệ" ForeColor="Red" Operator="DataTypeCheck" Display="Dynamic" Type="Date"> (*)</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="rf_txtNgaySinh" runat="server" ControlToValidate="txtNgaySinh" ErrorMessage="Ngay sinh khong duoc rong" ForeColor="Red"> (*)</asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                    <asp:Label runat="server">
                        Giới tính 
                    </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:RadioButton ID="radNam" runat="server" Text="Nam" GroupName="gioitinh" />
                        <asp:RadioButton ID="radNu" runat="server" Text="Nữ" GroupName="gioitinh" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                    <asp:Label runat="server">
                        Email
                    </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox><asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage=" Email không hợp lệ" ForeColor="Red" Display="Dynamic" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"> (*)</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rf_email" runat="server" ErrorMessage="Email Khong duoc rong" ControlToValidate="txtEmail" ForeColor="Red"> (*)</asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                     <asp:Label runat="server">
                         Thu nhập
                     </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtThuNhap" CssClass="txt" runat="server"></asp:TextBox><asp:RangeValidator ID="rvThuNhap" runat="server" ControlToValidate="txtThuNhap" ErrorMessage="Thu nhập từ 1 triệu đến 50 triệu" ForeColor="Red" MaximumValue="50000000" MinimumValue="1000000" Display="Dynamic"> (*)</asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="rf_thunhap" runat="server" ControlToValidate="txtThuNhap" ErrorMessage="Thu nhap khong duoc rong" ForeColor="Red"> (*)</asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Button ID="btnDangky" runat="server" Text="Đăng Ký" OnClick="btnDangky_Click" />
            <asp:ValidationSummary ID="vsTonghop" runat="server" ForeColor="Red" HeaderText="Danh sách các lỗi" Style="margin-top: 11px; position: relative; left: 2%; top: -1px;" Width="671px" />
            <br />
            <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
        </form>
    </div>
</body>
</html>
