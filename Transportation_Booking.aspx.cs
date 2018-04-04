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
    public partial class Transportation_Booking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void getcon()
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();
        }
       
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcon();
            String sel1 = "select Bus_type,Rate,Bus_no from Bus_details where Bus_name='" + DropDownList1.SelectedValue.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(sel1, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                lbltype.Text = dt1.Rows[0][0].ToString();
                lblrate.Text = dt1.Rows[0][1].ToString();
                lblbusno.Text = dt1.Rows[0][2].ToString();
            }
            con.Close();
            
        }
    }
}