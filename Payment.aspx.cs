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
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        String ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GenerateAutoID();
               
            }
            txtpaydate.Text = DateTime.Now.ToString();
            txtpayamunt.Text = (string)Session["Amount"];
            txtbookno.Text = (string)Session["BkngNo"];
            txtuname.Text = (string)Session["UserName"];
        }
        public void getcon()
        {
            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();
        }
        private void GenerateAutoID()
        {
            getcon();
            string str = "select Count(Pay_id) from Payments";
            SqlCommand cmd = new SqlCommand(str, con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtpayid.Text = ID + i.ToString();
        }
        protected void btnpay_Click(object sender, EventArgs e)
        {
            getcon();
            string ins = "insert into Payments values('"+txtpayid.Text+"','"+txtpaydate.Text+"','"+txtpayamunt.Text+"','"+RadioButtonList1.Text+"','"+txtholdername.Text+"','"+txtcardno.Text+"','"+txtcvvno.Text+"','"+txtbookno.Text+"','"+txtuname.Text+"')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Your Payment is Successful.TankYou! :-)')</script>");
            con.Close();
            txtpayid.Text = "";
            txtpaydate.Text = "";
            txtpayamunt.Text = "";
            RadioButtonList1.Text = "";
            txtholdername.Text = "";
            txtcardno.Text = "";
            txtcvvno.Text = "";
            txtuname.Text = "";
        }
        
    }
}