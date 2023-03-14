using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.IO;

public partial class user_add_complaint : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=crimereportingdb";


    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
       
        con.ConnectionString = "server=localhost;userid=root;password=;database=crimereportingdb";
        con.Open();

        if (Session["UserNIC"] != null)
        {
            lblHello.Text = Session["UserNIC"].ToString();
             policeName();
        }

        else
        {
            lblHello.Text = "";

        }
    }

    void policeName()
    {
        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandText = "SELECT DISTINCT PoliceCity FROM crimereportingdb.tblpolice";

        using (var reader = cmd.ExecuteReader())
        {
            while (reader.Read())
            {
                DDLstation.Items.Add(reader.GetString("PoliceCity"));
            }
        }
        con.Close();
    }



    protected void btnInsert_Click(object sender, EventArgs e)
    {
       

        try
        {

            FileUpload_image1.SaveAs(Server.MapPath("~/ComplainVIA/") + Path.GetFileName(FileUpload_image1.FileName));
            String link1 = "ComplainVIA/" + Path.GetFileName(FileUpload_image1.FileName);

            FileUpload_image2.SaveAs(Server.MapPath("~/ComplainVIA/") + Path.GetFileName(FileUpload_image2.FileName));
            String link2 = "ComplainVIA/" + Path.GetFileName(FileUpload_image2.FileName);

            FileUpload_image3.SaveAs(Server.MapPath("~/ComplainVIA/") + Path.GetFileName(FileUpload_image3.FileName));
            String link3 = "ComplainVIA/" + Path.GetFileName(FileUpload_image3.FileName);

            MySqlCommand cmd = new MySqlCommand("INSERT INTO crimereportingdb.tblcomplain" + " (ComplainSubject, ComplainDec, ComplainDateTime, ComplainPoliceStation, UserNIC, ComplainImage1, ComplainImage2, ComplainImage3, ComplainVideo1, complant_category) VALUES (@ComplainSubject, @ComplainDec, @ComplainDateTime, @ComplainPoliceStation, @UserNIC , @ComplainImage1, @ComplainImage2, @ComplainImage3, @ComplainVideo1, @complant_category)", con);

            cmd.Parameters.AddWithValue("@ComplainSubject", txtComSub.Text);
            cmd.Parameters.AddWithValue("@ComplainDec", txtComplaint.Text);
            cmd.Parameters.AddWithValue("@ComplainDateTime", DateTime.Today);
            cmd.Parameters.AddWithValue("@ComplainPoliceStation", DDLstation.Text);
            cmd.Parameters.AddWithValue("@UserNIC", lblHello.Text);
            cmd.Parameters.AddWithValue("@ComplainImage1", link1);
            cmd.Parameters.AddWithValue("@ComplainImage2", link2);
            cmd.Parameters.AddWithValue("@ComplainImage3", link3);

            cmd.Parameters.AddWithValue("@ComplainVideo1", txtvideolink.Text);
            cmd.Parameters.AddWithValue("@complant_category", DropDownCategory.Text);

            cmd.ExecuteNonQuery();

            txtComSub.Text = "";
            txtComplaint.Text = "";
            DDLstation.ClearSelection();
            txtvideolink.Text = "";
            DropDownCategory.ClearSelection();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Submit Details Successfully')</script>");
        }
    }
}