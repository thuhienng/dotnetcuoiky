using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace quanlikhachsan
{
    public partial class datphong : System.Web.UI.Page
    {
        access ac = new access();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lichden.Visible = false;
                lichdi.Visible = false;
            }
        }
         protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (lichden.Visible == false)
            {
                lichden.Visible = true;
            }
            else
                lichden.Visible = false;
        }
         protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
         {
             if (lichdi.Visible == false)
             {
                 lichdi.Visible = true;
             }
             else
                 lichdi.Visible = false;
         }
        protected void btndatphong_Click(object sender, EventArgs e)
        {
            String loaiphong = ddlloaiphong.SelectedValue.ToString();
            String mlp = Convert.ToString("Select MaLoaiPhong from loaiphong where MaLoaiPhong ='" + ddlloaiphong.SelectedValue + "'");
            String mp = Convert.ToString(ac.query("select MaPhong from Phong where TinhTrang like N'%Trống%' and MaLoaiPhong like'" + ddlloaiphong.SelectedValue.ToString() + "'"));
            String maphong = Convert.ToString(ac.query("select TOP(1) MaPhong from Phong where TinhTrang like N'%Trống%' and MaLoaiPhong like'" + ddlloaiphong.SelectedValue.ToString()+ "'"));
            if (loaiphong.Equals(mlp))
            {
                ac.query("Update Phong set TinhTrang =N'Hết', CMND ='"+txtcmnd.Text+"'where MaPhong like(select TOP(1) MaPhong from Phong where TinhTrang like N'%Trống%' and MaLoaiPhong='"+ddlloaiphong.SelectedValue+"')");
                ac.query("Insert into datphong values('" + txtngayden.Text + "','" + txtngaydi.Text + "','" + txtsodem.Text + "','" + ddlloaiphong.Text + "','" + txtnglon.Text + "','" + txttreem.Text + "','" + txtgiuongphu.Text + "','" + txtcmnd.Text + "')");
                ac.query("Insert into khachhang values(N'" + txthoten.Text + "','" + txtdiachi.Text + "','" + txtcmnd.Text + "','" + txtsdt.Text + "','" + txtemail.Text + "')");
                //Response.Write("Đặt phòng thành công!");
                Response.Write("<script>alert('Đặt phòng thành công!');</script>");
            }
            else
                Response.Write("<script>alert('Loại phòng bạn muốn đặt đã hết! Vui lòng chọn loại phòng khác phù hợp!');</script>");
        }

        

        protected void lichden_SelectionChanged(object sender, EventArgs e)
        {
            txtngayden.Text = lichden.SelectedDate.ToShortDateString();
            lichden.Visible = false;
        }

        protected void lichdi_SelectionChanged(object sender, EventArgs e)
        {
            txtngaydi.Text = lichdi.SelectedDate.ToShortDateString();
            lichdi.Visible = false;
            txtsodem_TextChanged();
        }

        protected void txtsodem_TextChanged()
        {
                DateTime ngayden = Convert.ToDateTime(txtngayden.Text);
                DateTime ngaydi = Convert.ToDateTime(txtngaydi.Text);
                TimeSpan Time = ngaydi - ngayden;
            
            if(txtngayden.Text != null && txtngaydi.Text!= null && ngaydi>ngayden )
            {                
                txtsodem.Text = Convert.ToString(Time.Days);
            }
            else
                Response.Write("<script>alert('Thông tin không hợp lệ!');</script>");
        }

       
    }
}