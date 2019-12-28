using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace quanlikhachsan
{
    public class access
    {
        public static string acc= @"Server=.\SQLEXPRESS; Database=webKS; Trusted_Connection=True"; //gán địa chỉ kết nối
        SqlConnection conn;
        DataTable tb;
        SqlDataAdapter ad;
        SqlCommand cmd;

       //phương thức mở kết nối
        public SqlConnection open() 
        {
            conn = new SqlConnection(acc);
            conn.Open();
            return conn;
        }
//phương thức đóng kết nối
        public SqlConnection close()        
     {
            conn = new SqlConnection(acc);
            conn.Close();
            return conn;

        }
    public DataTable query(string sql)        
      {
            open();
            tb = new DataTable();
            cmd = new SqlCommand(sql, conn);
            ad = new SqlDataAdapter(cmd);
            ad.Fill(tb);
            close();
            return tb;

      }

    }
}