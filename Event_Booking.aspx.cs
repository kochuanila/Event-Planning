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
    public partial class Event_Booking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        String ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoID();
            }
            txtbookdate.Text = DateTime.Now.ToString();
        }
        public void getcon()
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();

        }
        private void GenerateAutoID()
        {

            getcon();
            string str = "select Count(Book_ID) from Book_Event";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtBkngID.Text = ID + i.ToString();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            getcon();
            string str = "select Image from Add_Venue where Name= '" + DropDownList2.SelectedValue.ToString() + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btncalculate_Click(object sender, EventArgs e)
        {
            int a, b, c, d, f;
            a = Convert.ToInt32(lblequicost.Text);
            b = Convert.ToInt32(lbldectncost.Text);
            c = Convert.ToInt32(lblfoodcost.Text);
            d = a + b + c;
            txttotamunt.Text = d.ToString();
            f = d * 25 / 100;
            txtpaynow.Text = f.ToString();
        }

        protected void checkfood_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnequicost_Click(object sender, EventArgs e)
        {
            Double cst=0.0;
            foreach (ListItem lst in checkequi.Items)
            {
                if (lst.Selected == true)
                {
                    getcon();
                    string qry="select Cost from Equipment where Id=" +lst.Value.ToString();
                    SqlCommand cmd = new SqlCommand(qry, con);
                    SqlDataAdapter adr = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adr.Fill(dt);
                    cst = cst + Convert.ToDouble(dt.Rows[0][0]);
                    
                   
                        
                }
            }
        }
    }
}