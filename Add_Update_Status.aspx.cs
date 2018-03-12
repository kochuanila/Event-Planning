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
    public partial class Add_Update_Status : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();
        
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            String sel = "select Event_place,No_of_guest,Date,Total_amount,Amount_Pay,Event_place from Book_Events where Book_ID='" + txtbookid.Text + "'";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                txtevplace.Text = dt1.Rows[0][0].ToString();
                txtguest.Text = dt1.Rows[0][1].ToString();
                txtevdate.Text = dt1.Rows[0][2].ToString();
                txttotamunt.Text = dt1.Rows[0][3].ToString();
                txtpaynow.Text = dt1.Rows[0][4].ToString();
            }
            else
            {
                Response.Write("<script>alert('Invalid ID! :-)')</script>");

            }
        }

        protected void btnaddstatus_Click(object sender, EventArgs e)
        {
            String ins = "insert into Add_Status values('" + txtbookid.Text + "','" + DropDownList1.SelectedItem.ToString() + "')";
            SqlCommand cmd1 = new SqlCommand(ins, con);
            cmd1.ExecuteNonQuery();
            Response.Write("<script>alert('Details Added Successfully! :-)')</script>");

            
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            String update = "update Add_Status set  Status='" + DropDownList1.SelectedItem.ToString() + "' where Booking_ID='"+txtbookid.Text+"'" ;
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Details Updated Successfully! :-)')</script>");

        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtbookid.Text = "";
            txtevplace.Text = "";
            txtguest.Text = "";
            txtevdate.Text = "";
            txttotamunt.Text = "";
            txtpaynow.Text = "";
        }
    }
}