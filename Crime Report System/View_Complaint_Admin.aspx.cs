using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class View_Complaint_Admin : System.Web.UI.Page
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
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM crimereportingdb.tblcomplain", con);
        sqlDa.Fill(dtbl);

        GVCase.DataSource = dtbl;
        GVCase.DataBind();
    }

    protected void GVCase_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int ID = Convert.ToInt32(GVCase.DataKeys[e.RowIndex].Value.ToString());
        string UserNIC = ((TextBox)GVCase.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string ComplainPoliceStation = ((TextBox)GVCase.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string complantCategory = ((TextBox)GVCase.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string ComplainDateTime = ((TextBox)GVCase.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string ComplainSubject = ((TextBox)GVCase.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string ComplainDec = ((TextBox)GVCase.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string ComplainImage1 = ((TextBox)GVCase.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string ComplainImage2 = ((TextBox)GVCase.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        string ComplainImage3 = ((TextBox)GVCase.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
        string ComplainVideo1 = ((TextBox)GVCase.Rows[e.RowIndex].Cells[10].Controls[0]).Text;


        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE crimereportingdb.tblcomplain SET ComplainSubject='" + ComplainSubject + "', ComplainDec='" + ComplainDec + "', ComplainDateTime='" + ComplainDateTime + "', ComplainPoliceStation='" + ComplainPoliceStation + "', UserNIC='" + UserNIC + "', ComplainImage1='" + ComplainImage1 + "', ComplainImage2='" + ComplainImage2 + "',  ComplainImage3='" + ComplainImage3 + "' ,  ComplainVideo1='" + ComplainVideo1 + "' , complant_category='" + complantCategory + "'  WHERE ID='" + ID + "' ", con);

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script> alert('Data has Updated') </script>");
                GVCase.EditIndex = -1;
                GVbind();
            }
        }
    }



    protected void GVCase_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ID = Convert.ToInt32(GVCase.DataKeys[e.RowIndex].Value.ToString());

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE FROM crimereportingdb.tblcomplain WHERE ID='" + ID + "' ", con);

            cmd.ExecuteNonQuery();

            GVbind();
            Response.Write("<script> alert('Data has Deleted') </script>");
        }
    }

    protected void btnSearchCase_Click(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection(cs);

        con.Open();

        MySqlCommand cmd = new MySqlCommand();

        string query = "SELECT * FROM crimereportingdb.tblcomplain WHERE UserNIC= @UserNIC";
        cmd.CommandText = query;
        cmd.Connection = con;

        cmd.Parameters.AddWithValue("@UserNIC", txtSearch.Text);

        DataTable dl = new DataTable();

        MySqlDataAdapter da = new MySqlDataAdapter(cmd);

        da.Fill(dl);
        con.Close();
        GVCase.DataSource = dl;
        GVCase.DataBind();
    }

    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        Response.Redirect("View_Complaint_Admin.aspx");
    }
}