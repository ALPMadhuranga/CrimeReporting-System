using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
public partial class Admin_ViewMessage : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=crimereportingdb";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GVbind();
        }
    }
    void GVbind()
    {
        DataTable dtbl = new DataTable();

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM crimereportingdb.tblmsg", con);
        sqlDa.Fill(dtbl);

        GVUser.DataSource = dtbl;
        GVUser.DataBind();

    }

    protected void GVUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ID = Convert.ToInt32(GVUser.DataKeys[e.RowIndex].Value.ToString());

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE FROM crimereportingdb.tblmsg WHERE ID='" + ID + "' ", con);

            cmd.ExecuteNonQuery();

            GVbind();
            Response.Write("<script> alert('Data has Deleted') </script>");
        }
    }
}