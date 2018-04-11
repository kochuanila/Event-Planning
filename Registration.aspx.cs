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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        String ID = "Reg1002130";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GenerateAutoID();
            }

        }
        public void getcon()
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();

        }
        private void GenerateAutoID()
        {
            getcon();
            string str = "select Count(id) from Registration";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            lblid.Text = ID + i.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //getcon();
            //string com = "select Email from Registration where Email ='" + txtemail.Text + "' ";
            //SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            //DataTable dt = new DataTable();
            //adpt.Fill(dt);
            //if (dt.Rows.Count > 0)
            //{
            //    string message = " This User already Registered";
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            //}


            getcon();
            String ins = "insert into Registration values('" + lblid.Text + "','" + txtname.Text + "','" + txtaddress.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + txtuname.Text + "','" + txtpassword.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();

            txtname.Text = "";
            txtaddress.Text = "";
            txtcontact.Text = "";
            txtemail.Text = "";
            txtuname.Text = "";
            txtpassword.Text = "";
            txtconpass.Text = "";
            Response.Redirect("Login.aspx");
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtaddress.Text = "";
            txtcontact.Text = "";
            txtemail.Text = "";
            txtuname.Text = "";
            txtpassword.Text = "";
            txtconpass.Text = "";
        }
    }
}