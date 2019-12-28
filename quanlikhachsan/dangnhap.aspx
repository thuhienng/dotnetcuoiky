<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="quanlikhachsan.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/dangnhap.css"/>
</head>
<body>

<div class="login">
  <h2 class="active">KHÁCH SẠN TH</h2>
  <form id="id" runat="server">
     <asp:TextBox type="text" class="text" id="txttdn" runat="server"></asp:TextBox>
     <span>Tên đăng nhập</span>
    <asp:TextBox  type="password" class="text" id="txtmk" runat="server"></asp:TextBox>
    <span>Mật khẩu</span>
    <br>
    <asp:Button class="signin" id="btndangnhap" Text="Đăng nhập" runat="server" OnClick="btndangnhap_Click">
    </asp:Button>
    <hr>
  </form>

</div>
</body>
</html>
