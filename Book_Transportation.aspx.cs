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
    public partial class Book_Transportation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
       
        protected void Page_Load(object sender, EventArgs e)
        {

           
            if(!IsPostBack)
            {
                Panel1.Visible = true;
                Panel2.Visible = true;
               
            }
            txtevdate.Text = DateTime.Now.ToString();
        }
        public void getcon()
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();

        }
        
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (RadioButtonList1.SelectedItem.Text == "BUS")
            //{
            //    getcon();
            //    //Panel1.Visible = true;
            //    //Panel2.Visible = false;


            //    String sel = "select max(ID) from Book_Bus";
            //    SqlCommand cmd = new SqlCommand(sel, con);
            //    SqlDataAdapter sd = new SqlDataAdapter(cmd);
            //    DataTable dt = new DataTable();
            //    sd.Fill(dt);
            //    for (int i = 0; i < dt.Rows.Count; i++)
            //    {
            //        int j = Convert.ToInt32(dt.Rows[i][0].ToString()) + 1;
            //        txtBkngID.Text = j.ToString();
            //    }
            //    con.Close();
            //}
            //else if (RadioButtonList1.SelectedItem.Text == "CAR")
            //{
            //    getcon();
            //    Panel1.Visible = false;
            //    Panel2.Visible = true;


            //    String sel = "select max(ID) from Book_Car";
            //    SqlCommand cmd = new SqlCommand(sel, con);
            //    SqlDataAdapter sd = new SqlDataAdapter(cmd);
            //    DataTable dt = new DataTable();
            //    sd.Fill(dt);
            //    for (int i = 0; i < dt.Rows.Count; i++)
            //    {
            //        int j = Convert.ToInt32(dt.Rows[i][0].ToString()) + 1;
            //        txtBkngID.Text = j.ToString();
            //    }

            //    con.Close();
            //}
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into Book_Bus values('" + txtreplace.Text + "','" + txtretime.Text + "','" + txtevdate.Text + "','" + txtvenue.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + txttotamunt.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["Amount"] = txtpaynow.Text;
            Session["BkngNo"] = txtBkngID.Text;

            lblcartype.Text = "";
            lblcarrate.Text = "";
            lblcarno.Text = "";
            txtnocar.Text = "";
            txttotalamunt.Text = "";
            txtamtpay.Text = "";
            lbltype.Text = "";
            lblrate.Text = "";
            lblbusno.Text = "";
            txtnobus.Text = "";
            txttotamunt.Text = "";
            txtpaynow.Text = "";
            txtreplace.Text = "";
            txtretime.Text = "";
            txtevdate.Text = "";
            txtvenue.Text = "";
            txtBkngID.Text = "";
  
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcon();
            String sel1 = "select Bus_type,Rate,Bus_no from Bus_details where Bus_name='"+DropDownList1.SelectedValue.ToString()+"'";
            SqlCommand cmd1 = new SqlCommand(sel1, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if (dt1.Rows.Count>0)
            {
                lbltype.Text = dt1.Rows[0][0].ToString();
                lblrate.Text = dt1.Rows[0][1].ToString();
                lblbusno.Text = dt1.Rows[0][2].ToString();
            }
            con.Close();
        }
        protected void btncalculate_Click(object sender, EventArgs e)
        {
            int a, b, c, d;
            a = Convert.ToInt32(lblrate.Text);
            b = Convert.ToInt32(txtnobus.Text.ToString());
            c = a * b;
            txttotamunt.Text = c.ToString();
            d = c * 25 / 100;
            txtpaynow.Text = d.ToString();

        }
        
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcon();
            String sel1 = "select Car_type,Rate,Car_no from Car_details where Car_name='" + DropDownList2.SelectedValue.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(sel1, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                lblcartype.Text = dt1.Rows[0][0].ToString();
                lblcarrate.Text = dt1.Rows[0][1].ToString();
                lblcarno.Text = dt1.Rows[0][2].ToString();
            }
            con.Close();
        }

        protected void btncalcu_Click(object sender, EventArgs e)
        {
            int a, b, c, d;
            a = Convert.ToInt32(lblcarrate.Text);
            b = Convert.ToInt32(txtnocar.Text.ToString());
            c = a * b;
            txttotalamunt.Text = c.ToString();
            d = c * 25 / 100;
            txtamtpay.Text = d.ToString();
        }

        protected void btnsumit_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into Book_Car values('" + txtreplace.Text + "','" + txtretime.Text + "','" + txtevdate.Text + "','" + txtvenue.Text + "','" + DropDownList2.SelectedValue.ToString() + "','" + txttotalamunt.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["Amount"] = txtamtpay.Text;
            Session["BkngNo"] = txtBkngID.Text;

            lblcartype.Text = "";
            lblcarrate.Text = "";
            lblcarno.Text = "";
            txtnocar.Text = "";
            txttotalamunt.Text = "";
            txtamtpay.Text = "";
            lbltype.Text = "";
            lblrate.Text = "";
            lblbusno.Text = "";
            txtnobus.Text = "";
            txttotamunt.Text = "";
            txtpaynow.Text = "";
            txtreplace.Text = "";
            txtretime.Text = "";
            txtevdate.Text = "";
            txtvenue.Text = "";
            txtBkngID.Text = "";
        }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}

        protected void txttotamut_TextChanged(object sender, EventArgs e)
        {

        }

        //protected void btnclear_Click(object sender, EventArgs e)
        //{

        //}


        
    }
}