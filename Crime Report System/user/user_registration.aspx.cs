using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

using System.Security.Cryptography;
using System.Text;
using System.Configuration;
 

public partial class user_User_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    /*method EncryptPassword:*/
    private String EncryptPassword(string pass)
    {
        byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
        string EncryptedPassword = Convert.ToBase64String(bytes);
        return EncryptedPassword;
    }
   
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (checkmail() == true)
        {
            lblalreadmsg.Text = "Your Email Already Registered with Us";
            txtmail.BackColor = System.Drawing.Color.PaleGreen;
        }
        else
        {
            try
            {
                flupImage.SaveAs(Server.MapPath("../UserImage/") + Path.GetFileName(flupImage.FileName));
                String link = "../UserImage/" + Path.GetFileName(flupImage.FileName);

                string cs = "server=localhost;userid=root;password=;database=crimereportingdb";

                string query = "INSERT INTO crimereportingdb.tbluser(UserName, UserNIC, UserAddress, UserEmail, UserGender, UserContactNo, UserPassword, UserImage) VALUES ('" + txtFullname.Text + "', '" + txtNIC.Text + "', '" + txtAddress.Text + "', '" + txtmail.Text + "', '" + DropDownGender.Text + "', '" + txtContact.Text + "', '" + EncryptPassword(txtpass.Text) + "', '" + link + "' ) ";

                MySqlConnection con = new MySqlConnection(cs);
                con.Open();

                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

                con.Close();

                txtFullname.Text = "";
                txtNIC.Text = "";
                txtAddress.Text = "";
                txtmail.Text = "";
                txtContact.Text = "";
                txtpass.Text = "";
                DropDownGender.ClearSelection();
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Registered Successfully')</script>");

                Response.Redirect("user_login.aspx");
            }
        }
    }


    private bool checkmail()
    {
        bool emailavailable = false;
        string mycon = "server=localhost;userid=root;password=;database=crimereportingdb";
        string myquery = "SELECT * FROM crimereportingdb.tbluser WHERE UserNIC='" + txtNIC.Text + "' ";
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


    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length == 6)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}
