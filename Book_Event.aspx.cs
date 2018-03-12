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
    public partial class Book_Event : System.Web.UI.Page
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
            string str = "select Count(Book_ID) from Book_Events";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtBkngID.Text = ID + i.ToString();

        }

        

        protected void btneuiptcost_Click(object sender, EventArgs e)
        {

                getcon();
                String sel1 = "select Cost from Equipment where Equipments='" + checkequi.SelectedValue.ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    lblcostequi.Text = dt1.Rows[0][0].ToString();

                }
        }

        protected void btndectncost_Click(object sender, EventArgs e)
        {
            getcon();
            String sel1 = "select Cost from Decoration where Decoration='" + checkdectn.SelectedValue.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(sel1, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                lbldectncost.Text = dt1.Rows[0][0].ToString();

            }
        }

        protected void btnfoodcost_Click(object sender, EventArgs e)
        {
            if (checkfood.SelectedItem.Text == "Breakfast")
            {
                if(RadioButtonList1.SelectedItem.Text=="Veg")
                {
                    getcon();
                    String sel1 = "select Cost from Food where Food_type='" + RadioButtonList1.SelectedValue.ToString() + "'";
                    SqlCommand cmd1 = new SqlCommand(sel1, con);
                    SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    sd1.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        lblfoodcost.Text = dt1.Rows[0][0].ToString();

                    }
                }
                else if (RadioButtonList1.SelectedItem.Text == "Non Veg")
                {
                    getcon();
                    String sel1 = "select Cost from Food where Food_type='" + RadioButtonList1.SelectedValue.ToString() + "'";
                    SqlCommand cmd1 = new SqlCommand(sel1, con);
                    SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    sd1.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        lblfoodcost.Text = dt1.Rows[0][0].ToString();

                    }
                }
            }
            else if (checkfood.SelectedItem.Text == "Lunch")
            {
                if (RadioButtonList1.SelectedItem.Text == "Veg")
                {
                    getcon();
                    String sel1 = "select Cost from Food where Food='" + checkequi.SelectedValue.ToString() + "'";
                    SqlCommand cmd1 = new SqlCommand(sel1, con);
                    SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    sd1.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        lblfoodcost.Text = dt1.Rows[0][0].ToString();

                    }
                }
                else if (RadioButtonList1.SelectedItem.Text == "Non Veg")
                {
                    getcon();
                    String sel1 = "select Cost from Food where Food='" + checkequi.SelectedValue.ToString() + "'";
                    SqlCommand cmd1 = new SqlCommand(sel1, con);
                    SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    sd1.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        lblfoodcost.Text = dt1.Rows[0][0].ToString();

                    }
                }
            }
            else if (checkfood.SelectedItem.Text == "Dinner")
            {
                if (RadioButtonList1.SelectedItem.Text == "Veg")
                {
                    getcon();
                    String sel1 = "select Cost from Food where Food='" + checkequi.SelectedValue.ToString() + "'";
                    SqlCommand cmd1 = new SqlCommand(sel1, con);
                    SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    sd1.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        lblfoodcost.Text = dt1.Rows[0][0].ToString();

                    }
                }
                else if (RadioButtonList1.SelectedItem.Text == "Non Veg")
                {
                    getcon();
                    String sel1 = "select Cost from Food where Food='" + checkequi.SelectedValue.ToString() + "'";
                    SqlCommand cmd1 = new SqlCommand(sel1, con);
                    SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    sd1.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        lblfoodcost.Text = dt1.Rows[0][0].ToString();

                    }
                }
            }
        }

        protected void btncalculate_Click(object sender, EventArgs e)
        {
            

            int a, b, c, d, f;
            a = Convert.ToInt32(lblcostequi.Text);
            b = Convert.ToInt32(lbldectncost.Text);
            c = Convert.ToInt32(lblfoodcost.Text);
            d = a + b + c;
            txttotamunt.Text = d.ToString();
            f = d * 25 / 100;
            txtpaynow.Text = f.ToString();
        }

        protected void btnbook_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into Book_events values('" + txtBkngID.Text + "','" + txtbookdate.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + txtevplace.Text + "','" + txtnoguest.Text + "','" + txtdate.Text + "','" + checkequi.SelectedValue.ToString() + "','" + checkdectn.SelectedValue.ToString() + "','" + checkfood.SelectedValue.ToString() + "','" + RadioButtonList1.SelectedItem.ToString() + "','" + txttotamunt.Text + "','" + txtpaynow.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["Amount"] = txtpaynow.Text;
            Session["BkngNo"] = txtBkngID.Text;

            txtBkngID.Text = "";
            txtbookdate.Text = "";
            txtevplace.Text = "";
            txtnoguest.Text = "";
            txtdate.Text = "";
            txttotamunt.Text = "";
            txtpaynow.Text = "";
        }
    }
}