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
    public partial class Add_Venue : System.Web.UI.Page
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
            string str = "select Venu_id,Name,Address,Contact_no,Capacity,Prefered_for,Cost,Image from Add_Venue ";
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

        protected void btnaddvenue_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {


                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("/Uploads/" + str));
                string path = "~/Uploads/" + str.ToString();
                getcon();
                String ins = "insert into Add_Venue values('" + txtvname.Text + "','" + txtvadd.Text + "','" + txtvcontact.Text + "','" + txtcapacity.Text + "','" + DropDownList1.SelectedValue + "','" + txtcost.Text + "','" + path + "')";
                SqlCommand cmd = new SqlCommand(ins, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Added Successfully! :-)')</script>");
                String select = "select * from Add_Venue";
                cmd = new SqlCommand(select, con);
                cmd.ExecuteNonQuery();


               // Response.Write("success");
                SqlDataAdapter adr = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adr.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }
               // Response.Write("successfully added");
                txtvname.Text = "";
                txtvadd.Text = "";
                txtvcontact.Text = "";
                txtcapacity.Text = "";
                txtcost.Text = "";

            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            String Venu_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label9")).Text;
            string del = "delete from Add_Venue where Venu_id=" + Venu_id;
            SqlCommand cmd = new SqlCommand(del, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Deleted Successfully! :-)')</script>");
            con.Close();
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

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            getcon();
            String Venu_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label10")).Text;
            String Name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String Address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String Contact_no = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String Capacity = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            String Prefered_for = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            String Cost = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            String update = "update Add_Venue set Name='" + Name + "', Address='" + Address + "',Contact_no='" + Contact_no + "',Capacity='" + Capacity + "',Prefered_for='" + Prefered_for + "',Cost='" + Cost + "' where Venu_id='" + Venu_id + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Updated Successfully! :-)')</script>");
            con.Close();
            GridView1.EditIndex = -1;
            grid();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}