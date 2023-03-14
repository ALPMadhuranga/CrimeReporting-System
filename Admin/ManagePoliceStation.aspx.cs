using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Admin_ManagePoliceStation : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=crimereporting";
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
            MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM crimereporting.tblpolice", con);
            sqlDa.Fill(dtbl);

            GVAddPoliNew.DataSource = dtbl;
            GVAddPoliNew.DataBind();

        }




    protected void GVAddPoliNew_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GVAddPoliNew.EditIndex = e.NewEditIndex;
        GVbind();
    }

    protected void GVAddPoliNew_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        int ID = Convert.ToInt32(GVAddPoliNew.DataKeys[e.RowIndex].Value.ToString());
        string PoliceCode = ((TextBox)GVAddPoliNew.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string PoliceContactNO = ((TextBox)GVAddPoliNew.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string PoliceEmail = ((TextBox)GVAddPoliNew.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string PoliceAddress = ((TextBox)GVAddPoliNew.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string PoliceCity = ((TextBox)GVAddPoliNew.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string PolicePassword = ((TextBox)GVAddPoliNew.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
       

        using (MySqlConnection con = new MySqlConnection(cs)) 
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE crimereporting.tblpolice SET PoliceCode='" + PoliceCode + "', PoliceContactNO='" + PoliceContactNO + "', PoliceEmail='" + PoliceEmail + "', PoliceAddress='" + PoliceAddress + "', PoliceCity='" + PoliceCity + "', PolicePassword='" + PolicePassword + "' WHERE ID='" + ID + "' ", con);

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script> alert('Data has Updated') </script>");
                GVAddPoliNew.EditIndex = -1;
                GVbind();
            }
        }
    }

    protected void GVAddPoliNew_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GVAddPoliNew.EditIndex = -1;
        GVbind();
    }

    protected void GVAddPoliNew_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ID = Convert.ToInt32(GVAddPoliNew.DataKeys[e.RowIndex].Value.ToString());

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE FROM crimereporting.tblpolice WHERE ID='" + ID + "' ", con);

            cmd.ExecuteNonQuery();



            GVbind();
            Response.Write("<script> alert('Data has Delect') </script>");
        }
    }
}