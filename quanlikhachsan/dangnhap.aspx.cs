using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace quanlikhachsan
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            String tdn, mk, ad;
            tdn=txttdn.Text;
            mk=txtmk.Text;
            ad="admin";
            if (String.Compare(tdn, ad) == 0 && String.Compare(mk, ad) == 0)
            {
                Response.Redirect("themnhanvien.aspx");
            }
            else
                Response.Write("Đăng nhập thất bại!");
        }
    }
}