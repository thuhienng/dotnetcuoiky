using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace quanlikhachsan
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void btnxemthemhnghi_Click(object sender, EventArgs e)
        {
            Response.Redirect("hnghi.aspx");
        }
        public void btnxemthemnhahang_Click(object sender, EventArgs e)
        {
            Response.Redirect("nhahang.aspx");
        }
        public void btnxemthembeboi_Click(object sender, EventArgs e)
        {
            Response.Redirect("beboi.aspx");
        }
        public void btnxemthemgym_Click(object sender, EventArgs e)
        {
            Response.Redirect("phonggym.aspx");
        }
        public void btnxemthemkhuvuichoi_Click(object sender, EventArgs e)
        {
            Response.Redirect("khuvuichoitreem.aspx");
        }
        public void btnxemthemspa_Click(object sender, EventArgs e)
        {
            Response.Redirect("spa.aspx");
        }

    }
}