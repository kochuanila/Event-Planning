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
        DBManager db = new DBManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoID();
                getcon();
                string com = "select Name from Add_Venue";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt=new DataTable();
                adpt.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataTextField = "Name";
                DropDownList2.DataBind();
                checkfood.DataSource = dt;
                string str = "select Id,[food]=Food+Food_Type from Food";
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataAdapter adr = new SqlDataAdapter(cmd);
                adr.Fill(dt);
                dt = db.GetDataTableInline(str);
                if (dt.Rows.Count > 0)
                {
                    checkfood.DataSource = dt;
                    checkfood.DataValueField = "Id";
                    checkfood.DataTextField = "food";
                    checkfood.DataBind();
                }
                con.Close();
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

            //getcon();
            DBManager db = new DBManager();
            string str = "select Count(Book_ID) from Book_Events";
            //SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(db.ExecScaler(str));
            //con.Close();
            i++;
            txtBkngID.Text = ID + i.ToString();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            //getcon();
            DBManager db = new DBManager();
            DataTable dt = new DataTable();
            string str = "select Image from Add_Venue where Name= '" + DropDownList2.SelectedValue.ToString() + "'";
           //SqlCommand cmd = new SqlCommand(str, con);
           //SqlDataAdapter adr = new SqlDataAdapter(cmd);
           //DataTable dt = new DataTable();
            //adr.Fill(dt);
            dt = db.GetDataTableInline(str);
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

            Double cst = 0.0;
            foreach (ListItem lst in checkequi.Items)
            {
                if (lst.Selected == true)
                {
                    getcon();
                    string qry = "select Cost from Equipment where Id=" + lst.Value.ToString();
                    SqlCommand cmd = new SqlCommand(qry, con);
                    SqlDataAdapter adr = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adr.Fill(dt);
                    cst = cst + Convert.ToDouble(dt.Rows[0][0]);
                    con.Close();
                    lblequicost.Text = cst.ToString();

                }
            }
        }

        protected void btndectncost_Click(object sender, EventArgs e)
        {
            Double cst = 0.0;
            foreach (ListItem lst in checkdectn.Items)
            {
                if (lst.Selected == true)
                {
                    getcon();
                    string qry = "select Cost from Decoration where ID=" + lst.Value.ToString();
                    SqlCommand cmd = new SqlCommand(qry, con);
                    SqlDataAdapter adr = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adr.Fill(dt);
                    cst = cst + Convert.ToDouble(dt.Rows[0][0]);
                    con.Close();
                    lbldectncost.Text = cst.ToString();

                }
            }
        }

        protected void btnfoodcost_Click(object sender, EventArgs e)
        {
            Double cst = 0.0;
            foreach (ListItem lst in checkfood.Items)
            {
                if (lst.Selected == true)
                {
                    getcon();
                    string qry = "select Cost from Food where ID=" + lst.Value.ToString();
                    SqlCommand cmd = new SqlCommand(qry, con);
                    SqlDataAdapter adr = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adr.Fill(dt);
                    cst = cst + Convert.ToDouble(dt.Rows[0][0]);
                    con.Close();
                    int a;
                    a = Convert.ToInt32(txtnoguest.Text);
                    lblfoodcost.Text = (cst * a).ToString();

                }
            }
        }

        protected void btnbook_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into Book_Events values('" + txtBkngID.Text + "','" + txtbookdate.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + txtdate.Text + "','" + txtnoguest.Text + "','" + DropDownList2.SelectedValue.ToString() + "','" + checkequi.SelectedItem.ToString() + "','" + lblequicost.Text + "','" + checkdectn.SelectedItem.ToString() + "','" + lbldectncost.Text + "','" + checkfood.SelectedItem.ToString() + "','" + lblfoodcost.Text + "','" + txttotamunt.Text + "','" + txtpaynow.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["Amount"] = txtpaynow.Text;
            Session["BkngNo"] = txtBkngID.Text;

            txtBkngID.Text = "";
            txtbookdate.Text = "";
            txtnoguest.Text = "";
            txtdate.Text = "";
            txttotamunt.Text = "";
            txtpaynow.Text = "";
            lblequicost.Text = "";
            lbldectncost.Text = "";
            lblfoodcost.Text = "";
        }
    }
}