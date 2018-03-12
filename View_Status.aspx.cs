using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Event_Planing
{
    public partial class View_Status : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            String sel = "select Status from Add_Status";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                txtstatus.Text = dt1.Rows[0][0].ToString();
                
            }
            else
            {
                Response.Write("<script>alert('Invalid ID! :-)')</script>");

            }
        }
    }
}