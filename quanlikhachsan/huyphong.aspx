<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="huyphong.aspx.cs" Inherits="quanlikhachsan.huyphong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QUẢN LÝ KHÁCH SẠN</title>
    <link rel="stylesheet" href="~/Style.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .auto-style1 {
            margin-left: 18px;
        }
        .auto-style3 {
            margin-left: 12px;
        }
        .auto-style4 {
            margin-left: 42px;
        }
        .auto-style5 {
            margin-left: 36px;
        }
        .auto-style6 {
            margin-left: 21px;
        }
        .auto-style7 {
            margin-left: 15px;
        }
        .auto-style8 {
            margin-left: 10px;
        }
        .auto-style9 {
            margin-left: 20px;
        }
        .auto-style10 {
            margin-left: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div id="main">
            <div id="menutop">
                <!--phần menutop-->
                <ul>
                    <li><a href="trangchu.aspx"><i class="fa fa-home"></i>TRANG CHỦ</a></li>
                    <li><a href="loaiphong.aspx">THÔNG TIN PHÒNG</a>
                        <ul>
                            <li><a href="phongstd.aspx">PHÒNG STANDARD(STD)</a></li>
                            <li><a href="phongsup.aspx">PHÒNG SUPERIOR(SUP)</a></li>
                            <li><a href="phongdlx.aspx">PHÒNG DELUXE(DLX)</a></li>
                            <li><a href="phongsut.aspx">PHÒNG SUITE(SUT)</a></li>
                            <li><a href="phongconn.aspx">CONNECTING ROOM</a></li>
                        </ul>
                    </li>
                    <li><a href="trangchu.aspx/#dichvu">DỊCH VỤ</a>
                        <ul>
                            <ul>
                            <li><a href="hnghi.aspx">HỘI NGHỊ VÀ SỰ KIỆN</a></li>
                            <li><a href="nhahang.aspx">NHÀ HÀNG - BAR</a></li>                            
                            <li><a href="beboi.aspx">BỂ BƠI</a></li>
                            <li><a href="phonggym.aspx">PHÒNG GYM</a></li>
                            <li><a href="spa.aspx">SPA</a></li>
                            <li><a href="khuvuichoitreem.aspx">KHU VUI CHƠI TRẺ EM</a></li>
                        </ul>
                        </ul>
                    </li>
                    <li><a href="datphong.aspx">ĐẶT PHÒNG</a>
                        <ul>
                            <li><a href="huyphong.aspx">HỦY PHÒNG</a></li>
                        </ul>
                    </li>
                    <li><a href="#lienhe"><i class="fa fa-phone"></i>LIÊN HỆ</a></li>
                </ul>
            </div>

            <div style="margin-left: 30px; margin-right: auto; margin-top: 20px; font-size: 25px" id ="datphong">
                <asp:Label ID="lbldp" Text="HỦY PHÒNG" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#FF9900"></asp:Label>
            </div>
            <div style="margin-left: 30px; margin-right: auto; margin-top: 10px; font-size: 15px">
                <asp:Label ID="Label10" Text="Vui lòng nhập các thông tin cần thiết dưới đây" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="white" BackColor="#FF9900" Width="100%"></asp:Label>
            </div>
            <div style="margin-left:30px; margin-top: 12px;">
                <asp:Label ID="lblhoten" Text="Họ và tên:" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <asp:TextBox ID="txthoten" runat="server" CssClass="auto-style6" Width="174px"></asp:TextBox>
                <br />                
            </div>            
            <div style="margin-top: 6px; margin-left: 30px">
                <asp:Label ID="lblcmnd" runat="server" Text="Số CMND:" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <asp:TextBox ID="txtcmnd" runat="server" CssClass="auto-style7" Width="216px" ></asp:TextBox><br />
                <asp:Label ID="lblthbao" runat="server" Text="*Nếu không có số cmnd vui lòng nhập passport." Font-Bold="false" Font-Underline="False" ForeColor="black" Font-Italic="true"></asp:Label>
                <br />
            </div>
            <div style="margin-left:30px; margin-top: 6px">
                <asp:Label ID="lblsdt" Text="Số điện thoại:" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                <br />      
            </div>                          
            <div style="margin-left:30px; margin-top: 6px">
                <asp:Label ID="lblemail" Text="Email:" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <asp:TextBox ID="txtemail" runat="server" CssClass="auto-style4" Width="235px"></asp:TextBox>                
                <br />
            </div>
            <div style="margin-left:120px; margin-top:10px">
                <asp:Button ID="btnhuyphong" runat="server" Text="HỦY PHÒNG" CssClass="btndphong" Font-Bold="true" OnClick="btnhuyphong_Click"/>
            </div>
            <!--cuối trang-->
            <div id="footer" style="margin-top:100px; background: black; padding: 20px;">
                <div style="text-align: left" id ="lienhe">
                    <asp:Label ID="lbllienhe" Text="LIÊN HỆ" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#FF9900"></asp:Label>
                    <br />
                    <asp:Label ID="lbltenks" Text="Khách sạn TH" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="white"></asp:Label>
                    <br />
                </div>
                <div style="text-align: left; color: white">
                    <i class="fa fa-map-marker"></i> Địa chỉ: 
                    <br />
                    <i class="fa fa-phone"></i> Điện thoại: 08157852xx
                    <br />
                    <i class="fa fa-envelope"></i> Email: khachsanth@gmail.com       
                </div>
                
            </div>
            <!--end cuối trang-->
        </div>
    </form>

</body>
</html>


