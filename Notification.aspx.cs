using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace Event_Planing
{
    public partial class Notification : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        String ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            getcon();
            string com = "select Email from Registration";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Email";
            DropDownList1.DataBind();
            con.Close();
        }
        public void getcon()
        {

            con.ConnectionString = @"Data Source=LAPTOP-4H9G3A49\SQLEXPRESS;Initial Catalog=anu;Integrated Security=True";
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("kochuanila@gmail.com");
            msg.To.Add(new MailAddress(DropDownList1.SelectedItem.Text));
            msg.Subject = "note";
            msg.Body = txtmsg.Text;

            SmtpClient mySmtpClient = new SmtpClient();
            System.Net.NetworkCredential myCredential = new System.Net.NetworkCredential("kochuanila@gmail.com", " kochupurackal ");
            mySmtpClient.Host = "smtp.gmail.com";
            mySmtpClient.Port = 587;
            mySmtpClient.EnableSsl = true;
            mySmtpClient.UseDefaultCredentials = false;
            mySmtpClient.Credentials = myCredential;

            mySmtpClient.Send(msg);

            getcon();
            String ins = "insert into Notification values('" + DropDownList1.SelectedValue.ToString() + "','" + txtmsg.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Message Sended Successfully :-)')</script>");
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
        
    }
}