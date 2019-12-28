<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminquanly.aspx.cs" Inherits="quanlikhachsan.adminquanly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QUẢN LÝ KHÁCH SẠN</title>
    <link rel="stylesheet" href="~/Stylead.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body style="margin-top:200px; background-image:url(https://q-ec.bstatic.com/images/hotel/max1024x768/119/119277417.jpg)" >
  <ul class="menu cf" >
      <asp:Label ID="lb1" Text="KHÁCH SẠN TH" runat="server" Font-Bold="true" Style="margin-left:10px; font-size:50px"></asp:Label><br/><hr />
  <li>
    <a href="">Quản lý Phòng</a>
    <ul class="submenu">     
      <li><a href="themphong.aspx"><i class="fa fa-edit"></i>Thêm phòng</a></li>
    </ul>			
  </li>
      <li>
    <a href="">
        </i>Quản lý Nhân viên</a>
    <ul class="submenu">
      <li><a href=""><i class="fa fa-edit"></i>Thêm nhân viên</a></li>
    </ul>			
  </li>
  
</ul>
</body>

</html>
