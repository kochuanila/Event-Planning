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
    public partial class Reg_Update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();
        }
        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
        protected void btnselect_Click(object sender, EventArgs e)
        {
            String sel = "select Name,Address,Contact_no,Email,Username,Password,Con_password from Registration where id='" + txtid.Text + "'";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                txtname.Text = dt.Rows[0][0].ToString();
                txtadd.Text = dt.Rows[0][1].ToString();
                txtcontact.Text = dt.Rows[0][2].ToString();
                txtemail.Text = dt.Rows[0][3].ToString();
                txtuname.Text = dt.Rows[0][4].ToString();
                txtpass.Text = dt.Rows[0][5].ToString();
                txtconpass.Text = dt.Rows[0][6].ToString();
            }
            else
            {
                Response.Write("<script>alert('Invalid ID! :-)')</script>");

            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            String update = "update Registration set Name='" + txtname.Text + "',Address='" + txtadd.Text + "',Contact_no='" + txtcontact.Text + "',Email='" + txtemail.Text + "',Username='" + txtuname.Text + "',Password='" + txtpass.Text + "',Con_password='" + txtconpass.Text + "' where id='" + txtid.Text + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Details Updated Successfully! :-)')</script>");

            //txtid.Text = "";
            //txtname.Text = "";
            //txtadd.Text = "";
            //txtcontact.Text = "";
            //txtemail.Text = "";
            //txtuname.Text = "";
            //txtpass.Text = "";
            //txtconpass.Text = ""; 
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtid.Text = "";
            txtname.Text = "";
            txtadd.Text = "";
            txtcontact.Text = "";
            txtemail.Text = "";
            txtuname.Text = "";
            txtpass.Text = "";
            txtconpass.Text = ""; 
        }
    }
}