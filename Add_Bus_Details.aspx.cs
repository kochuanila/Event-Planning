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
    public partial class Add_Bus_Details : System.Web.UI.Page
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
            string str = "select Bus_id,Bus_name,Bus_type,Bus_no,Rate from Bus_details ";
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
            String ins = "insert into Bus_details values('" + txtbusname.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txtbusno.Text + "','" + txtrate.Text + "')";
            cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Added Successfully! :-)')</script>");
            String select = "select * from Bus_details";
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

            txtbusname.Text = "";
            txtbusno.Text = "";
            txtrate.Text = "";
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            String Bus_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label6")).Text;
            string del = "delete from Bus_details where Bus_id=" + Bus_id;
            SqlCommand cmd = new SqlCommand(del, con);
            Response.Write("<script>alert('Data Deleted Successfully! :-)')</script>");
            cmd.ExecuteNonQuery();
            con.Close();
            grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
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
            String Bus_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label11")).Text;
            String Bus_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String Bus_type = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String Bus_no = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String Rate = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;

            String update = "update Bus_details set Bus_name='" + Bus_name + "', Bus_type='" + Bus_type + "',Bus_no='" + Bus_no + "',Rate='" + Rate + "' where Bus_id='" + Bus_id + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Updated Successfully! :-)')</script>");
            con.Close();
            GridView1.EditIndex = -1;
            grid();
        }
    }
}