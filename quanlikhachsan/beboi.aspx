<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="beboi.aspx.cs" Inherits="quanlikhachsan.beboi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QUẢN LÝ KHÁCH SẠN</title>
    <link rel="stylesheet" href="~/Style.css" />
    <link rel="stylesheet" href="~/Style1.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="beboi" runat="server">
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
                    <li><a href="datphong.aspx">ĐẶT PHÒNG</a>
                         <ul>
                            <li><a href="huyphong.aspx">HỦY PHÒNG</a></li>
                            </ul>
                    </li>
                    <li><a href="#lienhe"><i class="fa fa-phone"></i>LIÊN HỆ</a></li>
                </ul>
            </div>
            <div>
                <div id="slideanh">
                    <!--phàn banner-->
                    <div class="slideshow-container">
                        <div class="mySlides fade">
                            <asp:Image ID="nhahang1" runat="server" ImageUrl="~/images/lon_78_1317270897.jpg" Style="width: 100%" />
                        </div>
                        <div class="mySlides fade">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/lon_78_1174838676.jpg" Style="width: 100%" />
                        </div>
                    </div>
                    <div style="text-align: center">
                        <span class="dot" onclick="currentSlide(0)"></span>
                        <span class="dot" onclick="currentSlide(1)"></span>
                    </div>
                </div>
                <div style="margin-top: 20px">
                    <asp:Label ID="lblname" Text="BỂ BƠI NGOÀI TRỜI" runat="server" Font-Bold="True" Font-Size="20px" Font-Underline="False" ForeColor="#FF9900"></asp:Label><br />
                    <hr />
                    Vị trí : Tầng 15                     
                    <br />
                    Diện tích: 400m2, sâu: 2,5m
                    <br />
                    Giờ mở cửa: 6h - 20h<br />
                    Tọa lạc trên tầng cao nhất của khách sạn, hồ bơi mở ra tầm nhìn vô cực như tên gọi của nó. <br />
                    Từ đây, bạn sẽ không còn thấy ranh giới giữa hồ bơi và đại dương bao la. <br />
                    Đắm mình vào làn nước xanh trong và thả hồn với sự tươi đẹp tuyệt vời của thiên nhiên, mây trời, biển cả và núi non. <br />
                    Trên tay một ly cocktail mát lạnh, cảm giác không thể tuyệt vời hơn khi tụ tập cùng bạn bè. <br />
                    Ngoài ra còn có khu vực hồ bơi dành cho trẻ em bên cạnh và hàng ghế để khách thư giãn.<br />
                </div>
            </div>
            <!--cuối trang-->
            <div id="footer" style="margin-top: 100px; background: black; padding: 20px;">
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
        </div>
    </form>
</body>
     <script>
         //khai báo biến slideIndex đại diện cho slide hiện tại
         var slideIndex;
         // KHai bào hàm hiển thị slide
         function showSlides() {
             var i;
             var slides = document.getElementsByClassName("mySlides");
             var dots = document.getElementsByClassName("dot");
             for (i = 0; i < slides.length; i++) {
                 slides[i].style.display = "none";
             }
             for (i = 0; i < dots.length; i++) {
                 dots[i].className = dots[i].className.replace(" active", "");
             }

             slides[slideIndex].style.display = "block";
             dots[slideIndex].className += " active";
             //chuyển đến slide tiếp theo
             slideIndex++;
             //nếu đang ở slide cuối cùng thì chuyển về slide đầu
             if (slideIndex > slides.length - 1) {
                 slideIndex = 0
             }
             //tự động chuyển đổi slide sau 5s
             setTimeout(showSlides, 5000);
         }
         //mặc định hiển thị slide đầu tiên 
         showSlides(slideIndex = 0);


         function currentSlide(n) {
             showSlides(slideIndex = n);
         }
    </script>
</html>

