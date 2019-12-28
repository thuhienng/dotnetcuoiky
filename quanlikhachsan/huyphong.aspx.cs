using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace quanlikhachsan
{
    public partial class huyphong : System.Web.UI.Page
    {
        access ac = new access();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnhuyphong_Click(object sender, EventArgs e)
        {
            if(txtcmnd.Text!= "")
            {
                ac.query("Update Phong set TinhTrang = N'Trống', CMND='' where CMND ='"+txtcmnd.Text+"'");
                ac.query("Delete from datphong where CMND ='"+txtcmnd.Text+"'");
                ac.query("Delete from khachhang where CMND ='" +txtcmnd.Text + "'");
                Response.Write("<script>alert('Hủy phòng thành công!');</script>");      
            }
            else
                Response.Write("<script>alert('Quý khách vui lòng kiểm tra lại thông tin');</script>");
        }
    }
}