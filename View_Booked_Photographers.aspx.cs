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
    public partial class View_Booked_Photographers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid();
                getcon();
                string com = "select book_id from Book_Photographers";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "book_id";
                DropDownList1.DataBind();
                con.Close();
            }

        }
        public void getcon()
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();
        }
        public void grid()
        {
            getcon();
            string str = "select * from Book_Photographers";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            getcon();
            String select = "select 1 from Add_Status where Booking_ID = '" + DropDownList2.SelectedItem.Text + "'";
            SqlCommand cmd = new SqlCommand(select, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                Response.Write("<script>alert('Already Added ! :-)')</script>");
            }
            else
            {
                String ins = "insert into Add_Status values('" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "')";
                SqlCommand cmd1 = new SqlCommand(ins, con);
                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('Details Added Successfully! :-)')</script>");
            }
            con.Close();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            getcon();
            String update = "update Add_Status set  Status='" + DropDownList2.SelectedItem.ToString() + "' where Booking_ID='" + DropDownList1.SelectedItem.Text + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Details Updated Successfully! :-)')</script>");
        }
    }
}