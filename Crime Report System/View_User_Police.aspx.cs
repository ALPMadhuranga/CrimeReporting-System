using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;


public partial class View_User_Police : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();
    string cs = "server=localhost;userid=root;password=;database=crimereportingdb";

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "server=localhost;userid=root;password=;database=crimereportingdb";
        con.Open();
        if (Session["PoliceCity"] != null)
        {
            GVbind();
        }

    }

    protected void btnSearchUser_Click(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection(cs);

        con.Open();

        MySqlCommand cmd = new MySqlCommand();

        string query = "SELECT * FROM crimereportingdb.tbluser WHERE UserNIC= @UserNIC";
        cmd.CommandText = query;
        cmd.Connection = con;

        cmd.Parameters.AddWithValue("@UserNIC", txtSearch.Text);

        DataTable dl = new DataTable();

        MySqlDataAdapter da = new MySqlDataAdapter(cmd);

        da.Fill(dl);
        con.Close();
        GVUser.DataSource = dl;
        GVUser.DataBind();
    }

    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        Response.Redirect("View_User_Police.aspx");
    }

    void GVbind()
    {

        DataTable dtbl = new DataTable();
        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM crimereportingdb.tbluser ", con);
        sqlDa.Fill(dtbl);

        GVUser.DataSource = dtbl;
        GVUser.DataBind();

    }
}