using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace quanlikhachsan
{
    public partial class themnhanvien : System.Web.UI.Page
    {
        access ac = new access();
        protected void Page_Load(object sender, EventArgs e)
        {
          


        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            if(txtchucvu.Text!=""&& txtcmnd.Text!="" && txttnv.Text!=""&&txtsdt.Text!=""&&txtns.Text!=""&&txtdiachi.Text!="")
            {
                ac.query("Insert into NhanVien values(N'" + txttnv.Text + "','" + txtns.Text + "',N'" + txtdiachi.Text + "','" + txtsdt.Text + "','" + txtcmnd.Text + "',N'" + txtchucvu.Text + "')");
                Response.Write("<script>alert('Thêm nhân viên thành công!');</script>");
            }
            else
                Response.Write("<script>alert('Vui lòng nhập đầy đủ thông tin!');</script>");
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            txttnv.Text = "";
            txtsdt.Text = "";
            txtns.Text = "";
            txtdiachi.Text = "";
            txtcmnd.Text = "";
            txtchucvu.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if(txtmaphong.Text!="" && txtmlp.Text!="")            
            {
                ac.query("Insert into Phong values('" + txtmaphong.Text + "','" + txtmlp.Text + "', N'Trống', ' ')");
                Response.Write("<script>alert('Thêm phòng thành công!');</script>");
            }
            else
                Response.Write("<script>alert('Vui lòng nhập đầy đủ thông tin!');</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtmaphong.Text = "";
           txtmlp.Text = "";
        }
    }
}