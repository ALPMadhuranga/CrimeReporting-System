using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class include_navbar : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["PoliceCity"] != null)
        {
            lblHello.Text = Session["PoliceCity"].ToString();
            btnlogout.Visible = true;
        }

        else
        {
            btnlogout.Visible = false;
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();

        Response.Redirect("~/index.aspx");

        btnlogout.Visible = false;
    }
}