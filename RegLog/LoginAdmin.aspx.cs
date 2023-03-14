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
       
        string query = "SELECT * FROM crimereporting.tbladmin";

        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        cmd.CommandText = query;
        cmd.Connection = con;

        MySqlDataAdapter da = new MySqlDataAdapter();

        da.SelectCommand = cmd;

        DataSet ds = new DataSet();

        da.Fill(ds);

        string AdminNIC;
        string AdminPassword;
        string AdminName;

        AdminNIC = ds.Tables[0].Rows[0]["AdminNIC"].ToString();
        AdminPassword = ds.Tables[0].Rows[0]["AdminPassword"].ToString();
        AdminName = ds.Tables[0].Rows[0]["AdminName"].ToString();
        con.Close();

        if (AdminNIC == txtNIC.Text && AdminPassword == txtPass.Text)
        {
            Session["AdminName"] = AdminName;

            Response.Write("<script LANGUAGE='JavaScript' >alert('Login Succssfull')</script>");

            Response.Redirect("~/admin/Dashboard.aspx");
        }

        else
        {
            Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid Password or User Name')</script>");
        }
    }
}