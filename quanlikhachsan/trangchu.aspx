<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="quanlikhachsan.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QUẢN LÝ KHÁCH SẠN</title>
    <link rel="stylesheet" href="~/Style.css"/>
    <link rel="stylesheet" href="~/Style1.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 218px;
        }
        .auto-style2 {
            width: 37px;
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
                    <li><a href="loaiphong.aspx">LOẠI PHÒNG</a>
                        <ul>
                            <li><a href="phongstd.aspx">PHÒNG STANDARD(STD)</a></li>
                            <li><a href="phongsup.aspx">PHÒNG SUPERIOR(SUP)</a></li>
                            <li><a href="phongdlx.aspx">PHÒNG DELUXE(DLX)</a></li>
                            <li><a href="phongsut.aspx">PHÒNG SUITE(SUT)</a></li>
                            <li><a href="phongconn.aspx">CONNECTING ROOM</a></li>
                        </ul>
                    </li>
                    <li><a href="#dichvu">DỊCH VỤ</a>
                        <ul>
                            <li><a href="hnghi.aspx">HỘI NGHỊ VÀ SỰ KIỆN</a></li>
                            <li><a href="nhahang.aspx">NHÀ HÀNG - BAR</a></li>                            
                            <li><a href="beboi.aspx">BỂ BƠI</a></li>
                            <li><a href="phonggym.aspx">PHÒNG GYM</a></li>
                            <li><a href="spa.aspx">SPA</a></li>
                            <li><a href="khuvuichoitreem.aspx">KHU VUI CHƠI TRẺ EM</a></li>
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
            <div style="margin-top:20px">
                <asp:Label ID="lblgioithieu" Text="GIỚI THIỆU" runat="server" Font-Bold="True" font-size="20px" Font-Underline="False" ForeColor="#FF9900"></asp:Label><br />
                <hr />
                <table style="border:0">
                    <tr>
                        <td>
                            <asp:Image ID="img1" runat="server" ImageUrl="~/images/Navy-flower-hotel-Đà-Lạt.jpg" Height="200px" Width="332px" /></td>
                        <td class="auto-style2"></td>
                        <td>Khách sạn TH nằm cạnh bờ biển Nhơn Hải, cách Quy Nhơn khoảng 16 km.
                        <br />
                            <br />
                            Từ đây, du khách có thể nhìn ra biển, đặc biệt là Hòn Khô - một trong những khu du lịch hấp dẫn nhất ở Quy Nhơn.<br />
                            <br />
                            Với không gian sang trọng, gồm 15 tầng, 150 phòng ngủ các loại, từ phòng bình thường cho tới phòng sang trọng, từ phòng đơn dành cho các du khách đi một mình đến phòng gia đình. Chúng tôi sẽ cố gắng cung cấp những dịch vụ, tiện nghi phù hợp với từng du khách. Đặc biệt hơn nữa, các du khách có thể tha hồ trải nghiệm các dịch vụ ở khách sạn chúng tôi với chi phí siêu tiết kiệm, từ tổ chức hội nghị cho đến các bữa tiệc bơi,...
                        <br />
                            <br />
                        </td>
                    </tr>
                   </table>               
                <br />
            </div>
            <div>
                <asp:Label ID="dichvu" Text="THÔNG TIN DỊCH VỤ" runat="server" Font-Bold="True" Font-Size="20px" Font-Underline="False" ForeColor="#FF9900"></asp:Label><br />
                <hr />
                <section>
                    <article>
                        <div id="hnghi" style="margin-top: 10px; width: 150px; margin-bottom:5px">
                            <a href="hnghi.aspx">
                            <asp:Label ID="hnghi1" Text="HỘI NGHỊ - SỰ KIỆN" runat="server" Font-Bold="True" Font-Size="15px" Font-Underline="False" ForeColor="#FF9900" Width="100%"></asp:Label><br />
                            </a>
                                <asp:Image ID="hahnghi" runat="server" ImageUrl="~/images/to-chuc-hoi-nghi(5).jpg" Height="200px" Width="361px" />
                            <br />
                            <asp:Label ID="ndhnghi" Text=" Vị trí: Tầng 9 <br/> Diện tích : 250m2 <br/> Phục vụ nhu cầu tổ chức Hội nghị, Hội thảo hay các Khóa huấn luyện, Tri ân khách hàng... <br/>" runat="server" Font-Bold="False" Font-Size="15px" Font-Underline="False" ForeColor="Black" Width="359px"></asp:Label>
                            <asp:Button ID="btnhnghi" runat="server" Text="Xem chi tiết" CssClass="btnxemthem" Font-Bold="true" OnClick="btnxemthemhnghi_Click" />
                        </div>
                    </article>
                    <article>
                        <div id="nhahang" style="margin-top: 10px; width: 150px ; margin-bottom:5px">
                            <a href="nhahang.aspx">
                            <asp:Label ID="nhang" Text="NHÀ HÀNG - BAR" runat="server" Font-Bold="True" Font-Size="15px" Font-Underline="False" ForeColor="#FF9900" Width="100%"></asp:Label>
                            </a>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/nha-hang-khach-san-4.jpg" Height="200px" Width="376px" />
                            <br />
                            <asp:Label ID="Label2" Text=" Vị trí : Tầng 8 <br/>Diện tích : 250m2<br/>Sức chứa tối đa 250 khách, thực đơn đa dạng, phong phú.<br/>" runat="server" Font-Bold="False" Font-Size="15px" Font-Underline="False" ForeColor="black" Width="380px"></asp:Label>
                            <asp:Button ID="btnnhahang" runat="server" Text="Xem chi tiết" CssClass="btnxemthem" Font-Bold="true" OnClick="btnxemthemnhahang_Click"/>
                        </div>
                    </article>
                    <article>
                        <div id="beboi" style="margin-top: 10px; width: 150px; margin-bottom:5px"> 
                            <a href="beboi.aspx">
                            <asp:Label ID="Label1" Text="BỂ BƠI" runat="server" Font-Bold="True" Font-Size="15px" Font-Underline="False" ForeColor="#FF9900" Width="100%"></asp:Label><br />
                            </a>
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/alaca.jpg" Height="200px" Width="379px" />
                            <br />
                            <asp:Label ID="Label3" Text="Vị trí: Tầng 15 <br/> Diện tích: 400m2, sâu: 2,5m <br/> Giờ mở cửa: 6h - 20h <br/>" runat="server" Font-Bold="False" Font-Size="15px" Font-Underline="False" ForeColor="black" Width="380px"></asp:Label>
                            <asp:Button ID="btnbeboi" runat="server" Text="Xem chi tiết" CssClass="btnxemthem" Font-Bold="true" OnClick="btnxemthembeboi_Click" />
                        </div>
                    </article>
                </section>
                <section>
                    <article>
                        <div id="phonggym" style="margin-top: 10px; width: 150px; margin-bottom:5px">
                            <a href="phonggym.aspx">
                            <asp:Label ID="Label4" Text="PHÒNG GYM" runat="server" Font-Bold="True" Font-Size="15px" Font-Underline="False" ForeColor="#FF9900" Width="100%"></asp:Label><br />
                            </a>
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/180712-5-2000-fac-saigon-hotel.jpg.thumb.768.768.jpg" Height="200px" Width="364px" />
                            <br />
                            <asp:Label ID="Label5" Text=" Vị trí: Tầng 14 <br/> Giờ mở cửa: 6h - 22h<br/>" runat="server" Font-Bold="False" Font-Size="15px" Font-Underline="False" ForeColor="black" Width="380px"></asp:Label>
                            <asp:Button ID="btnphonggym" runat="server" Text="Xem chi tiết" CssClass="btnxemthem" Font-Bold="true" OnClick="btnxemthemgym_Click" />
                        </div>
                    </article>
                    <article>
                        <div id="spa" style="margin-top: 10px; width: 150px ; margin-bottom:5px">
                            <a href="spa.aspx">
                            <asp:Label ID="Label6" Text="SPA" runat="server" Font-Bold="True" Font-Size="15px" Font-Underline="False" ForeColor="#FF9900" Width="100%"></asp:Label>
                            </a>
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/khong gian sang trong sotifel.jpg" Height="200px" width="381px"/>
                            <br />
                            <asp:Label ID="Label7" Text=" Vị trí : Tầng 14 <br/> Giờ mở cửa: 6h - 22h<br/>" runat="server" Font-Bold="False" Font-Size="15px" Font-Underline="False" ForeColor="black" Width="380px"></asp:Label>
                            <asp:Button ID="btnspa" runat="server" Text="Xem chi tiết" CssClass="btnxemthem" Font-Bold="true" OnClick="btnxemthemspa_Click" />
                        </div>
                    </article>
                    <article>
                        <div id="khuvuichoi" style="margin-top: 10px; margin-bottom:5px" class="auto-style1"> 
                            <a href="khuvuichoitreem.aspx">
                            <asp:Label ID="Label8" Text="KHU VUI CHƠI TRẺ EM" runat="server" Font-Bold="True" Font-Size="15px" Font-Underline="False" ForeColor="#FF9900" Width="100%"></asp:Label><br />
                            </a>
                                <asp:Image ID="Image5" runat="server" ImageUrl="~/images/foody-mobile-2-jpg-966-636142827370069795.jpg" Height="200px" Width="378px" />
                            <br />
                            <asp:Label ID="Label9" Text="Vị trí: Tầng 2 <br/> Giờ mở cửa: 6h - 21h <br/>" runat="server" Font-Bold="False" Font-Size="15px" Font-Underline="False" ForeColor="black" Width="380px"></asp:Label>
                            <asp:Button ID="Btnkhuvuichoi" runat="server" Text="Xem chi tiết" CssClass="btnxemthem" Font-Bold="true" OnClick="btnxemthemkhuvuichoi_Click" />
                        </div>
                    </article>
                </section>
            </div>

           
        <div id="footer" style="margin-top: 80px; background: black; padding: 20px;">
            <!--cuối trang-->
            <div style="text-align: left" id="lienhe">

                <asp:Label ID="lbllienhe" Text="LIÊN HỆ" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#FF9900"></asp:Label>
                <br />
                <asp:Label ID="lbltenks" Text="Khách sạn TH" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="white"></asp:Label>
                <br />
            </div>
            <div style="text-align: left; color: white">
                <i class="fa fa-map-marker"></i>Địa chỉ:
        <br />
                <i class="fa fa-phone"></i>Điện thoại: 08157852xx
        <br />
                <i class="fa fa-envelope"></i>Email: khachsanth@gmail.com
            </div>
        </div>
<!--end cuối trang-->
       
    </form>
</body>

</html>


