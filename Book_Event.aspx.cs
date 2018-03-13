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
            string str = "select Count(Book_ID) from Book_Event";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtBkngID.Text = ID + i.ToString();

        }

        

        protected void btneuiptcost_Click(object sender, EventArgs e)
        {
            if( rblequi.SelectedItem.Text=="DJ & Stage")
            {
                getcon();
                String sel1 = "select Cost from Equipment where Equipments='" + rblequi.SelectedItem.Text + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    lblcostequi.Text = dt1.Rows[0][0].ToString();

                }
            }
            else if (rblequi.SelectedItem.Text == "DJ")
            {
                getcon();
                String sel1 = "select Cost from Equipment where Equipments='"+rblequi.SelectedItem.Text+"'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    lblcostequi.Text = dt1.Rows[0][0].ToString();

                }
            }
            else if (rblequi.SelectedItem.Text == "Stage")
            {
                getcon();
                String sel1 = "select Cost from Equipment where Equipments='" + rblequi.SelectedItem.Text + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    lblcostequi.Text = dt1.Rows[0][0].ToString();

                }
            }
            else
            {
                getcon();
                String sel1 = "select Cost from Equipment where Equipments='" + rblequi.SelectedItem.Text + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    lblcostequi.Text = dt1.Rows[0][0].ToString();

                }
            }    
        }

        protected void btndectncost_Click(object sender, EventArgs e)
        {

            if (rbldectn.SelectedItem.Text == "Lightings")
            {
                getcon();
                String sel1 = "select Cost from Decoration where Decoration='" + rbldectn.SelectedValue.ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    lbldectncost.Text = dt1.Rows[0][0].ToString();

                }
                
            }
            else if (rbldectn.SelectedItem.Text == "Flowers")
            {
                getcon();
                String sel1 = "select Cost from Decoration where Decoration='" + rbldectn.SelectedValue.ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    lbldectncost.Text = dt1.Rows[0][0].ToString();

                }
            }
            else if (rbldectn.SelectedItem.Text == "Lights & Flowers")
            {
                getcon();
                String sel1 = "select Cost from Decoration where Decoration='" + rbldectn.SelectedValue.ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    lbldectncost.Text = dt1.Rows[0][0].ToString();

                }
            }
            else
            {
                getcon();
                String sel1 = "select Cost from Decoration where Decoration='" + rbldectn.SelectedValue.ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    lbldectncost.Text = dt1.Rows[0][0].ToString();

                }
            }
        }

        protected void btnfoodcost_Click(object sender, EventArgs e)
        {
            if (rblfood.SelectedItem.Text == "Veg")
            {
                getcon();
                String sel1 = "select Cost from Foods where Food_type='" + rblfood.SelectedValue.ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {

                    lblcost.Text = dt1.Rows[0][0].ToString();

                }
                
            }
            else if (rblfood.SelectedItem.Text == "NonVeg")
            {                
                getcon();
                String sel1 = "select Cost from Foods where Food_type='" + rblfood.SelectedValue.ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {

                    lblcost.Text = dt1.Rows[0][0].ToString();

                }
            }
            else if (rblfood.SelectedItem.Text == "Veg & Non Veg")
            {                
                getcon();
                String sel1 = "select Cost from Foods where Food_type='" + rblfood.SelectedValue.ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(sel1, con);
                SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {

                    lblcost.Text = dt1.Rows[0][0].ToString();

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
            String ins = "insert into Book_Event values('" + txtBkngID.Text + "','" + txtbookdate.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + DropDownList3.SelectedValue.ToString() + "','" + txtnoguest.Text + "','" + txtdate.Text + "','" + DropDownList2.SelectedValue.ToString() + "','" + rblequi.SelectedValue.ToString() + "','" + rbldectn.SelectedValue.ToString() + "','" + rblfood.SelectedItem.ToString() + "','" + txttotamunt.Text + "','" + txtpaynow.Text + "')";
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
            lblcost.Text = "";
            lblcostequi.Text = "";
            lbldectncost.Text = "";
            lblfoodcost.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (rblfood.SelectedItem.Text == "Veg")
            {
                int a, b, c;
                a = Convert.ToInt32(lblcost.Text);
                b = Convert.ToInt32(txtnoguest.Text);
                c = a * b;
                lblfoodcost.Text = c.ToString();
            }
            else if (rblfood.SelectedItem.Text == " NonVeg")
            {
                int a, b, c;
                a = Convert.ToInt32(lblcost.Text);
                b = Convert.ToInt32(txtnoguest.Text);
                c = a * b;
                lblfoodcost.Text = c.ToString();
            }
            else 
            {
                int a, b, c;
                a = Convert.ToInt32(lblcost.Text);
                b = Convert.ToInt32(txtnoguest.Text);
                c = a * b;
                lblfoodcost.Text = c.ToString();
            }
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            getcon();
            string str = "select Image from Add_Venue where Name= '" + DropDownList3.SelectedValue.ToString() + "'";
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

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtnoguest_TextChanged(object sender, EventArgs e)
        {
            
        }
        protected void rbldectn_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}