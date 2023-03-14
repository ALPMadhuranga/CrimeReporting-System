using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Admin_UserManage : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=crimereporting";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GVbind();
        }
    }

    protected void GVUser_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GVUser.EditIndex = e.NewEditIndex;
        GVbind();
    }

    void GVbind()
    {
        DataTable dtbl = new DataTable();

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM crimereporting.tbluser", con);
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
        string UserCountry = ((TextBox)GVUser.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string UserEmail = ((TextBox)GVUser.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string UserGender = ((TextBox)GVUser.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string UserContactNO = ((TextBox)GVUser.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string UserPassword = ((TextBox)GVUser.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        string UserImage = ((TextBox)GVUser.Rows[e.RowIndex].Cells[9].Controls[0]).Text;

        using (MySqlConnection con = new MySqlConnection(cs)) 
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE crimereporting.tbluser SET UserName='" + UserName + "', UserNIC='" + UserNIC + "', UserAddress='" + UserAddress + "', UserCountry='" + UserCountry + "', UserEmail='" + UserEmail + "', UserGender='" + UserGender + "', UserContactNO='" + UserContactNO + "',  UserPassword='" + UserPassword + "' ,  UserImage='" + UserImage + "'  WHERE ID='" + ID + "' ", con);

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

            MySqlCommand cmd = new MySqlCommand("DELETE FROM crimereporting.tbluser WHERE ID='" + ID + "' ", con);

            cmd.ExecuteNonQuery();

            GVbind();
            Response.Write("<script> alert('Data has Delect') </script>");
        }
    }

    protected void btnSearchUser_Click(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection(cs);

        con.Open();

        MySqlCommand cmd = new MySqlCommand();

        string query = "SELECT * FROM crimereporting.tbluser WHERE UserNIC= @UserNIC";
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
}