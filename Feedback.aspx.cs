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
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdate.Text = DateTime.Now.ToString();
        }
        public void getcon()
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into Feedback values('" + txtdate.Text + "','" + txtname.Text + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + txtfeedback.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            con.Close();  
            txtdate.Text = "";
            txtname.Text = "";
            txtemail.Text = "";
            txtcontact.Text = "";
            txtfeedback.Text = "";
        }
    }
}