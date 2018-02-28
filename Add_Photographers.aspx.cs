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
    public partial class Add_Photographers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid();
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
            string str = "select Pg_id,Name,Age,Gender,Address,Contact_no,Email,Experience,Rate from Add_photographer ";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into Add_photographer values('" + txtname.Text + "','" + txtage.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + txtadd.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + txtexp.Text + "','" + txtrate.Text + "')";
            cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Added Successfully! :-)')</script>");
            String select = "select * from Add_photographer";
            cmd = new SqlCommand(select, con);
            cmd.ExecuteNonQuery();


            Response.Write("success");
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

            txtname.Text = "";
            txtage.Text = "";
            txtadd.Text = "";
            txtcontact.Text = "";
            txtemail.Text = "";
            txtexp.Text = "";
            txtrate.Text = "";

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            String Pg_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label3")).Text;
            string del = "delete from Add_photographer where Pg_id=" + Pg_id;
            SqlCommand cmd = new SqlCommand(del, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data deleted Successfully! :-)')</script>");
            con.Close();
            grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            getcon();
            String Pg_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label19")).Text;
            String Name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String Age = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String Gender = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String Address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            String Contact_no = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            String Email = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text;
            String Experience = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text;
            String Rate = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8")).Text;
            String update = "update Add_photographer set Name='" + Name + "', Age='" + Age + "',Gender='" + Gender + "',Address='" + Address + "',Contact_no='" + Contact_no + "',Email='" + Email + "',Experience='" + Experience + "',Rate='" + Rate + "' where Pg_id='" + Pg_id + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Updated Successfully! :-)')</script>");
            con.Close();
            GridView1.EditIndex = -1;
            grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid();
        }
    }
}