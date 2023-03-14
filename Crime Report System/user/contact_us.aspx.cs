using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.IO;
public partial class user_contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
       
            try
            {
               
                string cs = "server=localhost;userid=root;password=;database=crimereportingdb";

                string query = "INSERT INTO crimereportingdb.tblmsg(name, email, mobile, msg) VALUES ('" + txtname.Text + "', '" + txtemail.Text + "', '" + txtmobile.Text + "', '" + txtmsg.Text + "') ";

                MySqlConnection con = new MySqlConnection(cs);
                con.Open();

                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

                con.Close();

                txtname.Text = "";
                txtemail.Text = "";
                txtmobile.Text = "";
                txtmsg.Text = "";
                Response.Write("<script LANGUAGE='JavaScript' >alert('Massage Send Successfully')</script>");
                }

                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Massage Send Successfully')</script>");

                    Response.Redirect("contact_us.aspx");
                }
        
    }
}