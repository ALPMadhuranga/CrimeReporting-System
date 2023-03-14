using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class RegLog_RegisterUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReg_Click(object sender, EventArgs e)
    {
        if (checkemail() == true)
        {
            lblalreademsg.Text = "Your Email Already Registered with Us";
            txtNIC.BackColor = System.Drawing.Color.PaleGreen;


        }
        else
        {
            try
            {
                FileUploadImage.SaveAs(Server.MapPath("~/UserImage/") + Path.GetFileName(FileUploadImage.FileName));
                String link = "UserImage/" + Path.GetFileName(FileUploadImage.FileName);

                string cs = "server=localhost;userid=root;password=;database=crimereporting";

                string query = "INSERT INTO crimereporting.tbluser(UserName, UserNIC, UserAddress, UserCountry, UserEmail, UserGender, UserContactNO, UserPassword, UserImage) VALUES ('" + txtFullName.Text + "', '" + txtNIC.Text + "', '" + txtAddress.Text + "', '" + txtCounty.Text + "', '" + txtEmail.Text + "', '" + DropDownListGender.Text + "' , '" + txtContact.Text + "' , '" + txtPAssword.Text + "' , '" + link + "' )";

                MySqlConnection con = new MySqlConnection(cs);
                con.Open();

                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();


                con.Close();

                txtEmail.Text = "";
                txtPAssword.Text = "";
                txtAddress.Text = "";
                txtContact.Text = "";
                txtCounty.Text = "";
                txtFullName.Text = "";
                txtNIC.Text = "";
                DropDownListGender.ClearSelection();

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


    private bool checkemail()
    {
        bool emailavailable = false;
        string mycon = "server=localhost;userid=root;password=;database=crimereporting";
        string myquery = "Select * from crimereporting.tbluser where UserNIC='" + txtNIC.Text + "'";
        MySqlConnection con = new MySqlConnection(mycon);
        MySqlCommand cmd = new MySqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        MySqlDataAdapter da = new MySqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }
}