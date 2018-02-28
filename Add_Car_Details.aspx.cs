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
    public partial class Add_Car_Details : System.Web.UI.Page
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
            string str = "select Car_id,Car_name,Car_type,Car_no,Rate from Car_details ";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into Car_details values('" + txtcarname.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txtcarno.Text + "','" + txtrate.Text + "')";
            cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Added Successfully! :-)')</script>");
            String select = "select * from Car_details";
            cmd = new SqlCommand(select, con);
            cmd.ExecuteNonQuery();


            //Response.Write("success");
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

            txtcarname.Text = "";
            txtcarno.Text = "";
            txtrate.Text = "";

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            String Car_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label6")).Text;
            string del = "delete from Car_details where Car_id=" + Car_id;
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
            String Car_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label11")).Text;
            String Car_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String Car_type = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String Car_no = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String Rate = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;

            String update = "update Car_details set Car_name='" + Car_name + "', Car_type='" + Car_type + "',Car_no='" + Car_no + "',Rate='" + Rate + "' where Car_id='" + Car_id + "'";
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