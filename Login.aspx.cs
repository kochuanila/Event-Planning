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
            if (RadioButtonList1.SelectedItem.Text == "Admin")
            {


                String sel = "select * from Login where Username='" + txtuname.Text + "' and Password='" + txtpass.Text + "'";
                SqlCommand cmd = new SqlCommand(sel, con);
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ad.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Session["Password"] = dt.Rows[0][0].ToString();
                    Session["Username"] = dt.Rows[0][1].ToString();

                    Response.Write("Login Sucessfull");
                    Response.Redirect("View_Registration.aspx");

                }
                else
                {
                    Response.Write("Login Unsucessfull");
                }
            }
            else if (RadioButtonList1.SelectedItem.Text == "User")
            {
                String sel = "select username,password from Registration where UserName='" + txtuname.Text + "' and Password='" + txtpass.Text + "'";
                SqlCommand cmd = new SqlCommand(sel, con);
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["password"] = dt.Rows[0][0].ToString();
                    Session["username"] = dt.Rows[0][1].ToString();

                    Response.Redirect("Reg_Update.aspx");
                }
                else
                {
                    Response.Write("Login Unsucessfull");
                }
            }
        }
    }
}