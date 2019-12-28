<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datphong.aspx.cs" Inherits="quanlikhachsan.datphong" %>

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
                            <li><a href="hnghi.aspx">HỘI NGHỊ VÀ SỰ KIỆN</a></li>
                            <li><a href="nhahang.aspx">NHÀ HÀNG - BAR</a></li>                            
                            <li><a href="beboi.aspx">BỂ BƠI</a></li>
                            <li><a href="phonggym.aspx">PHÒNG GYM</a></li>
                            <li><a href="spa.aspx">SPA</a></li>
                            <li><a href="khuvuichoitreem.aspx">KHU VUI CHƠI TRẺ EM</a></li>
                        </ul>
                        
                    </li>
                    <li><a href="#datphong">ĐẶT PHÒNG</a>
                         <ul>
                            <li><a href="huyphong.aspx">HỦY PHÒNG</a></li>
                            </ul>
                    </li>
                    <li><a href="#lienhe"><i class="fa fa-phone"></i>LIÊN HỆ</a></li>
                </ul>
            </div>

            <div style="margin-left: 30px; margin-right: auto; margin-top: 20px; font-size: 25px" id ="datphong">
                <asp:Label ID="lbldp" Text="ĐẶT PHÒNG" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#FF9900"></asp:Label>
            </div>
            <div style="margin-left: 30px; margin-right: auto; margin-top: 10px; font-size: 15px">
                <asp:Label ID="Label10" Text=" Vui lòng nhập các thông tin cần thiết dưới đây" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="white" BackColor="#FF9900" Width="100%"></asp:Label>
            </div>
            <div style="margin-left:30px; margin-top: 12px;">
                <asp:Label ID="Label1" Text="Ngày đến:" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <asp:TextBox ID="txtngayden" runat="server" CssClass="auto-style8" Width="140px"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/calendar.png" Height="23" OnClick="ImageButton1_Click"/><br />
                <br />
                <asp:Calendar ID="lichden" runat="server" OnSelectionChanged="lichden_SelectionChanged" ></asp:Calendar>
            </div>
            <div style="margin-top: 6px; margin-left: 30px">
                <asp:Label ID="Label2" runat="server" Text="Ngày đi:" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <asp:TextBox ID="txtngaydi" runat="server" CssClass="auto-style9" Width="140px" ></asp:TextBox><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/calendar.png" Height="23" OnClick="ImageButton2_Click"/><br />
                <asp:Calendar ID="lichdi" runat="server" OnSelectionChanged="lichdi_SelectionChanged" ></asp:Calendar>
                <br />
            </div>
            <div style="margin-top:-15px; margin-left: 30px">
                <asp:Label ID="Label3" Text="Số đêm:" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <asp:TextBox ID="txtsodem" runat="server" CssClass="auto-style10" Width="72px" ReadOnly></asp:TextBox>
                <br />      
            </div>
                          
            <div style="margin-left: 30px; margin-top:6px">
                <asp:Label ID="Label4" Text="Loại phòng:" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
               <asp:DropDownList ID="ddlloaiphong" runat="server" AutoPostBack="true">
                    <asp:ListItem Value ="STD">PHÒNG STANDARD(STD)</asp:ListItem>
                    <asp:ListItem Value="SUP">PHÒNG SUPERIOR(SUP)</asp:ListItem>
                    <asp:ListItem Value="DLX">PHÒNG DELUXE(DLX)</asp:ListItem>
                    <asp:ListItem Value="SUT">PHÒNG SUITE(SUT)</asp:ListItem>
                    <asp:ListItem Value="CR">CONNECTING ROOM</asp:ListItem>
                </asp:DropDownList>                
            </div>
            <div style="margin-left: 30px; margin-top: 6px">
                <asp:Label ID="Label5" Text="Số người:" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <br />
                <div style="margin-left: 30px; margin-top: 6px">
                    <asp:Label ID="Label6" Text="Người lớn" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                    <asp:TextBox ID="txtnglon" runat="server" Width="115px"></asp:TextBox>
                    <br />
                </div>
                <div style="margin-left: 30px; margin-top: 6px">
                    <asp:Label ID="Label7" Text="Trẻ em" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                    <asp:TextBox ID="txttreem" runat="server" CssClass="auto-style1" Width="115px"></asp:TextBox>
                    <asp:Label ID="Label8" Text="*Trẻ em từ 6 tuổi trở xuống." runat="server" Font-Bold="false" Font-Underline="False" ForeColor="black" Font-Italic="True"></asp:Label>
                </div>
                
            </div>
            <div style="margin-top: 10px; margin-left: 30px">
                <asp:Label ID="Label9" Text="Giường phụ:" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <asp:TextBox ID="txtgiuongphu" runat="server" CssClass="auto-style3" Width="118px"></asp:TextBox>
                <br />
            </div>
            <div style="margin-left: 30px; margin-right: auto; margin-top: 30px; font-size: 25px">
                <asp:Label ID="lblttkh" Text="THÔNG TIN KHÁCH HÀNG" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#FF9900"></asp:Label>
            </div>
            <div style="margin-left: 30px; margin-right: auto; margin-top: 10px; font-size: 15px">
                <asp:Label ID="Lbltb" Text=" Vui lòng nhập các thông tin cần thiết dưới đây" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="white" BackColor="#FF9900" Width="100%"></asp:Label>
            </div>
            <div style="margin-left:30px; margin-top: 12px;">
                <asp:Label ID="lblhoten" Text="Họ và tên:" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <asp:TextBox ID="txthoten" runat="server" CssClass="auto-style6" Width="174px"></asp:TextBox>
                <br />                
            </div>
            <div style="margin-top: 6px; margin-left: 30px">
                <asp:Label ID="lbldiachi" runat="server" Text="Địa chỉ:" Font-Bold="True" Font-Underline="False" ForeColor="black"></asp:Label>
                <asp:TextBox ID="txtdiachi" runat="server" CssClass="auto-style5" Width="216px" ></asp:TextBox>
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
                <asp:Button ID="btndatphong" runat="server" Text="ĐẶT PHÒNG" CssClass="btndphong" Font-Bold="true" OnClick="btndatphong_Click"/>
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

