using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class View_User_Admin : System.Web.UI.Page
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
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM crimereportingdb.tbluser", con);
        sqlDa.Fill(dtbl);

        GVUser.DataSource = dtbl;
        GVUser.DataBind();

    }
    protected void GVUser_RowUpdating(object sender, GridViewUpdateEventArgs e)
    { 
       
        int ID = Convert.ToInt32(GVUser.DataKeys[e.RowIndex].Value.ToString());
        string UserName = ((TextBox)GVUser.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string UserNIC = ((TextBox)GVUser.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string UserAddress = ((TextBox)GVUser.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string UserEmail = ((TextBox)GVUser.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string UserGender = ((TextBox)GVUser.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string UserContactNo = ((TextBox)GVUser.Rows[e.RowIndex].Cells[7].Controls[0]).Text;

        using (MySqlConnection con = new MySqlConnection(cs)) 
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE crimereportingdb.tbluser SET UserName='" + UserName + "', UserNIC='" + UserNIC + "', UserAddress='" + UserAddress + "', UserEmail='" + UserEmail + "', UserGender='" + UserGender + "', UserContactNo='" + UserContactNo + "' WHERE ID='" + ID + "' ", con);

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script> alert('Data has Updated') </script>");
                GVUser.EditIndex = -1;
                GVbind();
            }
        }
    }

    protected void GVUser_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GVUser.EditIndex = -1;
        GVbind();
    }

    protected void GVUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ID = Convert.ToInt32(GVUser.DataKeys[e.RowIndex].Value.ToString());

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE FROM crimereportingdb.tbluser WHERE ID='" + ID + "' ", con);

            cmd.ExecuteNonQuery();

            GVbind();
            Response.Write("<script> alert('Data has Deleted') </script>");
        }
    }

    protected void GVUser_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GVUser.EditIndex = e.NewEditIndex;
        GVbind();
    }
}