<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="themnhanvien.aspx.cs" Inherits="quanlikhachsan.themnhanvien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/Styleadminquanly.css"/>
</head>
<body>
      <form id="id" runat="server">
<div class="login">
  <h2>KHÁCH SẠN TH</h2>
    <h3 class="active">THÊM NHÂN VIÊN</h3>

     <asp:TextBox class="text" id="txttnv" runat="server" placeholder="Tên nhân viên"></asp:TextBox>
     
    <asp:TextBox  class="text" id="txtns" runat="server" placeholder="Ngày tháng năm sinh"></asp:TextBox>
   
      <asp:TextBox class="text" id="txtdiachi" runat="server" placeholder="Địa chỉ"></asp:TextBox>
    
        <asp:TextBox   class="text" id="txtsdt" runat="server" placeholder="Số điện thoại"></asp:TextBox>
    
        <asp:TextBox  class="text" id="txtcmnd" runat="server" placeholder="Số CMND"></asp:TextBox>
    
      <asp:TextBox  class="text" id="txtchucvu" runat="server" placeholder="Chức vụ"></asp:TextBox> 
    <br>
    <asp:Button class="signin" id="btnthem" Text="THÊM" runat="server" OnClick="btnthem_Click">
    </asp:Button>
    <hr>
      <asp:Button class="signin" id="btnhuy" Text="Hủy" runat="server" OnClick="btnhuy_Click">
    </asp:Button>
   

</div>
    <div id="themphong" class="login">
  <h2>KHÁCH SẠN TH</h2>
    <h3 class="active">THÊM PHÒNG</h3>
    <asp:TextBox class="text" id="txtmaphong" runat="server" placeholder="Mã phòng"></asp:TextBox>   
      
    <asp:TextBox  id="txtmlp" class="text" runat="server"></asp:TextBox>
    <asp:Button class="signin" id="Button1" Text="THÊM" runat="server" OnClick="Button1_Click">
    </asp:Button>
    <hr/>
      <asp:Button class="signin" id="Button2" Text="Hủy" runat="server">
    </asp:Button>

</div>
    </form>
</body>
</html>
