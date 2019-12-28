using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace quanlikhachsan
{
    public partial class themphong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("Select * From loaiphong", access.acc);
            DataTable ds = new DataTable();
            ad.Fill(ds);
            ddlmaloaiphong.DataSource = ds;
            ddlmaloaiphong.DataTextField = "TenLoaiPhong";
            ddlmaloaiphong.DataValueField = "MaLoaiPhong";
            ddlmaloaiphong.DataBind();
        }
    }
}