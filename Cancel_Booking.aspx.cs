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
    public partial class Cancel_Booking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd;
        String ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GenerateAutoID();
            }
            txtdate.Text = DateTime.Now.ToString();
        }
        public void getcon()
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();
        }
        private void GenerateAutoID()
        {
            getcon();
            string str = "select Count(ID) from Cancel_Bookings";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtid.Text = ID + i.ToString();
        }
        protected void btnviewdetails_Click(object sender, EventArgs e)
        {
            getcon();
            String sel = "select Booking_date,Date,Total_amount,Amount_Pay,Event_place from Book_Event where Book_ID='"+txtBkngID.Text+"'";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if(dt1.Rows.Count>0)
            {
                lblbooingdate.Text = dt1.Rows[0][0].ToString();
                lblevdate.Text = dt1.Rows[0][1].ToString();
                lbltotamunt.Text = dt1.Rows[0][2].ToString();
                lblpaynow.Text = dt1.Rows[0][3].ToString();
                lblevplace.Text = dt1.Rows[0][4].ToString();
            }
            con.Close();
        }

        protected void btncancelbooking_Click(object sender, EventArgs e)
        {
            getcon();
            String del = "delete from Book_Event where Book_ID='" + txtBkngID + "'";
            cmd = new SqlCommand(del, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Your Booking is Canceled! :-)')</script>");
            String ins = "insert into Cancel_Bookings values('" + txtid.Text + "','" + txtdate.Text + "','" + txtBkngID.Text + "')";
            cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            //int i = cmd.ExecuteNonQuery();
            //if (i != 0)
            //{

            //    Response.Write("<script>alert('Your Booking is Canceled! :-)')</script>");

            //}
            //con.Close();
            lblbooingdate.Text = "";
            lblevdate.Text = "";
            lbltotamunt.Text = "";
            lblpaynow.Text = "";
            lblevplace.Text = "";
            txtBkngID.Text = "";
            txtdate.Text = "";
            txtid.Text = "";

        }
        
    }
}