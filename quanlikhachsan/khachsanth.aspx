<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="khachsanth.aspx.cs" Inherits="quanlikhachsan.khachsanth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="~/stylelogin.css" />
    <link rel="stylesheet" href="~/Styleadminquanly.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Thêm nhân viên</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
			<div class="sign-in-htm">
                <asp:TextBox type="text" class="text" id="txttnv" runat="server" placeholder="Tên nhân viên"></asp:TextBox>
     
    <asp:TextBox  type="text" class="text" id="txtns" runat="server" placeholder="Ngày tháng năm sinh"></asp:TextBox>
   
      <asp:TextBox  type="text" class="text" id="txtdiachi" runat="server" placeholder="Địa chỉ"></asp:TextBox>
    
        <asp:TextBox  type="text" class="text" id="txtsdt" runat="server" placeholder="Số điện thoại"></asp:TextBox>
    
        <asp:TextBox  type="text" class="text" id="txtcmnd" runat="server" placeholder="Số CMND"></asp:TextBox>
    
      <asp:TextBox  type="text" class="text" id="txtchucvu" runat="server" placeholder="Chức vụ"></asp:TextBox> 
    <br/>
    <asp:Button class="signin" id="btnthem" Text="THÊM" runat="server">
    </asp:Button>
    <hr/>
      <asp:Button class="signin" id="btnhuy" Text="Hủy" runat="server">
    </asp:Button>
                </div>
        			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Email Address</label>
					<input id="pass" type="text" class="input">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</a>
				</div>
			</div>
    </form>
</body>
</html>
