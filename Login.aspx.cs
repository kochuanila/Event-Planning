using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Event_Planing
{
    public partial class login1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
           
            SqlCommand cmd = new SqlCommand("select * from Registration where username =@username and password=@password", con);

            cmd.Parameters.AddWithValue("@username", txtuname.Text);

            cmd.Parameters.AddWithValue("@password", txtpass.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                Response.Redirect("User_Home.aspx");


            }
            else if (txtuname.Text == "admin" && txtpass.Text == "admin")
            {
                Response.Redirect("Admin_Home.aspx");
            }

            else
            {

                txtuname.Text = "";
                txtpass.Text = "";
                Response.Write("<script language=javascript>alert('Invalid username and password')</script>");
            }
        }

        protected void txtuname_TextChanged(object sender, EventArgs e)
        {

        }
    }
}