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
    public partial class Book_Photographer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        String ID = "P001890";
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
            string str = "select Count(book_id) from Book_Photographers";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtBkngID.Text = ID + i.ToString();

            
        }

       

        protected void btnbook_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into Book_Photographers values('" + txtBkngID.Text + "','"+txtuname.Text+"','" + txtdate.Text + "','" + txttime.Text + "','" + txtreplace.Text + "','" + txtretime.Text + "','" + txtvenue.Text + "','" + txtid.Text + "','" + txtname.Text + "','" + txttotamunt.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            Session["Amount"] = txtpaynow.Text;
            Session["BkngNo"] = txtBkngID.Text;
            Session["UserName"] = txtuname.Text;
            Response.Redirect("Payment.aspx");
            txtBkngID.Text = "";
            txtdate.Text = "";
            txttime.Text = "";
            txtreplace.Text = "";
            txtretime.Text = "";
            txtvenue.Text = "";
            txtid.Text = "";
            txtname.Text = "";
            txtcontact.Text = "";
            txtrate.Text = "";
            txttotamunt.Text = "";
            txtpaynow.Text = "";
            txtuname.Text = "";
        }
        
        protected void txtid_TextChanged(object sender, EventArgs e)
        {
            
        }
        protected void txtcontact_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            String sel1 = "select Name,Contact_no,Rate from Add_photographers where Pg_id='" + txtid.Text + "'";
            SqlCommand cmd1 = new SqlCommand(sel1, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                txtname.Text = dt1.Rows[0][0].ToString();
                txtcontact.Text = dt1.Rows[0][1].ToString();
                txtrate.Text = dt1.Rows[0][2].ToString();
            }
            else
            {
                Response.Write("<script>alert('Invalid ID! :-)')</script>");

            }
            con.Close();
        }

        protected void btncalculate_Click(object sender, EventArgs e)
        {
           

            int a, b, c, d;
            a = Convert.ToInt32(txtrate.Text);
            b = 1;
            //b = Convert.ToInt32(txtphno.Text.ToString());
            c = a * b;
            txttotamunt.Text = c.ToString();
            d = c * 25 / 100;
            txtpaynow.Text = d.ToString();

        }

    }
}