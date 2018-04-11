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
    public partial class Add_Vehicle : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        String ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoID();
                grid();
            }

        }
        public void getcon()
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();

        }
        private void GenerateAutoID()
        {
            getcon();
            string str = "select Count(ID) from Vehicle_details";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtid.Text = ID + i.ToString();
        }
        public void grid()
        {
            getcon();
            string str = "select id,Vehicle,Vehicle_Name,Vehicle_Type,Vehicle_No,Vehicle_Rate from Vehicle_details ";
            SqlCommand cmd = new SqlCommand(str, con);
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
            String ins = "insert into Vehicle_details values('" + txtid.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + txtname.Text + "','" + DropDownList2.SelectedItem.ToString() + "','" + txtno.Text + "','" + txtrate.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Added Successfully! :-)')</script>");
            String select = "select * from Vehicle_details";
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
            txtname.Text = "";
            txtno.Text = "";
            txtrate.Text = "";
            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            getcon();
            String ID = ((Label)GridView1.Rows[e.RowIndex].FindControl("label14")).Text;
            String Vehicle = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            String Vehicle_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String Vehicle_type = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String Vehicle_no = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String Vehicle_Rate = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;

            String update = "update Vehicle_details set Vehicle='" + Vehicle + "', Vehicle_name='" + Vehicle_name + "', Vehicle_type='" + Vehicle_type + "',Vehicle_no='" + Vehicle_no + "',Vehicle_Rate='" + Vehicle_Rate + "' where ID='" + ID + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Updated Successfully! :-)')</script>");
            con.Close();
            GridView1.EditIndex = -1;
            grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            String ID = ((Label)GridView1.Rows[e.RowIndex].FindControl("label9")).Text;
            string del = "delete from Vehicle_details where ID=" + ID;
            SqlCommand cmd = new SqlCommand(del, con);
            Response.Write("<script>alert('Data Deleted Successfully! :-)')</script>");
            cmd.ExecuteNonQuery();
            con.Close();
            grid();
        }
    }
}