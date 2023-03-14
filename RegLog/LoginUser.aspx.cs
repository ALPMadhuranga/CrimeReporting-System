using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
public partial class RegLog_LoginUser : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=crimereporting";
  
    protected void Page_Load(object sender, EventArgs e)
    {
     
     
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
       
        string query = "SELECT * FROM crimereporting.tbluser";

        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        cmd.CommandText = query;
        cmd.Connection = con;

        MySqlDataAdapter da = new MySqlDataAdapter();

        da.SelectCommand = cmd;

        DataSet ds = new DataSet();

        da.Fill(ds);

        string UserNIC;
        string UserPassword;
        string UserName;

        UserNIC = ds.Tables[0].Rows[0]["UserNIC"].ToString();
        UserPassword = ds.Tables[0].Rows[0]["UserPassword"].ToString();
        UserName = ds.Tables[0].Rows[0]["UserName"].ToString();
        con.Close();

        if (UserNIC == txtNIC.Text && UserPassword == txtPass.Text)
        {
            Session["UserNIC"] = UserNIC;

            Response.Write("<script LANGUAGE='JavaScript' >alert('Login Succssfull')</script>");

            Response.Redirect("Complain.aspx");
        }

        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Password or User Name')</script>");
        }
    }
}