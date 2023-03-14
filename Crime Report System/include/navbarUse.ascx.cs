using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
public partial class include_navbarUse : System.Web.UI.UserControl
{
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserNIC"] != null)
        {
            lblHello.Text = Session["UserNIC"].ToString();

            btnLogout.Visible = true;

            HyperlinkRegister.Visible = false;
            HyperlinkSignIn.Visible = false;
            HyperlinkCompaint.Visible = true;
            HyperlinkViewCom.Visible = true;
        }

        else
        {
            lblHello.Text = "Welcome!";

            btnLogout.Visible = false;

            HyperlinkRegister.Visible = true;
            HyperlinkSignIn.Visible = true;
            HyperlinkCompaint.Visible = false;
            HyperlinkViewCom.Visible = false;
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/index.aspx");
    }
}