using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


public partial class View_Complaint_User : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=crimereportingdb";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserNIC"] != null)
        {

            GVbind();
            lblHello.Text = Session["UserNIC"].ToString();

        }

        else
        {
            lblHello.Text = "";

        }
    }

    void GVbind()
    {
        DataTable dtbl = new DataTable();

        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM crimereportingdb.tblcomplain WHERE UserNIC='" + Session["UserNIC"] + "' ", con);
        sqlDa.Fill(dtbl);

        GVCase.DataSource = dtbl;
        GVCase.DataBind();

    }



}