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
    public partial class Book_Vehicle : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        String ID = "V1002390";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoID();
                getcon();
                string com = "select Vehicle_Name from Vehicle_details";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "Vehicle_Name";
                DropDownList1.DataBind();
                con.Close();
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
            string str = "select Count(Bkng_ID) from Book_Vehicles";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtBkngID.Text = ID + i.ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcon();
            String sel1 = "select Vehicle_Type,Vehicle_Rate,Vehicle_No from Vehicle_details where Vehicle_name='" + DropDownList1.SelectedValue.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(sel1, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                lbltype.Text = dt1.Rows[0][0].ToString();
                lblrate.Text = dt1.Rows[0][1].ToString();
                lblno.Text = dt1.Rows[0][2].ToString();
            }
            con.Close();
        }

        protected void btncalculate_Click(object sender, EventArgs e)
        {
            int a, b, c, d;
            a = Convert.ToInt32(lblrate.Text);
            b = Convert.ToInt32(txtno.Text.ToString());
            c = a * b;
            txttotamunt.Text = c.ToString();
            d = c * 25 / 100;
            txtpaynow.Text = d.ToString();
        }

        protected void btnbook_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into Book_Vehicles values('"+txtBkngID.Text+"','" + txtuname.Text + "','" + txtreplace.Text + "','" + txtretime.Text + "','" + txtevdate.Text + "','" + txtvenue.Text + "','" + RadioButtonList1.SelectedValue.ToString() + "','" + DropDownList1.SelectedValue.ToString() + "','" + txttotamunt.Text + "','" + txtpaynow.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["Amount"] = txtpaynow.Text;
            Session["BkngNo"] = txtBkngID.Text;
            Session["UserName"] = txtuname.Text;
            Response.Redirect("Payment.aspx");
            txtreplace.Text = "";
            txtretime.Text = "";
            txtevdate.Text = "";
            txtvenue.Text = "";
            txttotamunt.Text = "";
            txtpaynow.Text = "";
            txtuname.Text = "";
        }
    }
}