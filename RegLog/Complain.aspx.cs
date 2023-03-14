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

public partial class User_Complain : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=crimereporting";

    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

        pliceName();

        if (Session["UserNIC"] != null)
        {
            lblHello.Text = Session["UserNIC"].ToString();
        }

        else
        {
            lblHello.Text = "";

        }

    }

    void pliceName()
    {
        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandText = "SELECT DISTINCT PoliceCity FROM crimereporting.tblpolice";

        using (var reder = cmd.ExecuteReader())
        {
            while (reder.Read())
            {
                DDLStation.Items.Add(reder.GetString("PoliceCity"));
            }
        }
        con.Close();
    }

   
    protected void btnInsertEdit_Click(object sender, EventArgs e)
    {
        

        try
        {

            FileUploadImage1.SaveAs(Server.MapPath("~/ComplainVIA/") + Path.GetFileName(FileUploadImage1.FileName));
            String ComplainImage1 = "ComplainVIA/" + Path.GetFileName(FileUploadImage1.FileName);

            FileUploadImage2.SaveAs(Server.MapPath("~/ComplainVIA/") + Path.GetFileName(FileUploadImage2.FileName));
            String ComplainImage2 = "ComplainVIA/" + Path.GetFileName(FileUploadImage2.FileName);

            FileUploadImage3.SaveAs(Server.MapPath("~/ComplainVIA/") + Path.GetFileName(FileUploadImage3.FileName));
            String ComplainImage3 = "ComplainVIA/" + Path.GetFileName(FileUploadImage3.FileName);

            FileUploadVideo1.SaveAs(Server.MapPath("~/ComplainVIA/") + Path.GetFileName(FileUploadVideo1.FileName));
            String ComplainVideo1 = "ComplainVIA/" + Path.GetFileName(FileUploadVideo1.FileName);

            FileUploadVideo2.SaveAs(Server.MapPath("~/ComplainVIA/") + Path.GetFileName(FileUploadVideo2.FileName));
            String ComplainVideo2 = "ComplainVIA/" + Path.GetFileName(FileUploadVideo2.FileName);


            string cs = "server=localhost;userid=root;password=;database=crimereporting";

            string query = "INSERT INTO crimereporting.tblcomplain( ComplainSubject, ComplainDec, ComplainDateTime, ComplainPoliceStation, ComplainImage1, ComplainImage2, ComplainImage3,ComplainVideo1,ComplainVideo2 , UserNIC) VALUES ('" + txtComplainSubject.Text + "', '" + txtComplain.Text + "', '" + DateTime.Today + "', '" + DDLStation.Text + "', '" + ComplainImage1 + "' , '" + ComplainImage2 + "', '" + ComplainImage3 + "', '" + ComplainVideo1 + "', '" + ComplainVideo2 + "','" + lblHello.Text  + "' )";

            MySqlConnection con = new MySqlConnection(cs);
            con.Open();

            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();


            con.Close();

            txtComplain.Text = "";
            txtComplainSubject.Text = "";
            DDLStation.ClearSelection();

        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        finally
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Register Successful')</script>");

        }
    }
}