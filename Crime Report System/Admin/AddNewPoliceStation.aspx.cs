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

public partial class Admin_AddNewPoliceStation : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "server=localhost;userid=root;password=;database=crimereportingdb";
        con.Open();

        if (!IsPostBack)
        {
            GVbind();

        }
    }

    /*method EncryptPassword:*/
    private String EncryptPassword(string pass)
    {
        byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
        string EncryptedPassword = Convert.ToBase64String(bytes);
        return EncryptedPassword;
    }

    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        if (checkemail() == true)
        {
            lblerr.Text = "Police Code Already Registered";
            txtCode.BackColor = System.Drawing.Color.PaleGreen;
        }
        else
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand("INSERT INTO crimereportingdb.tblpolice " + " (PoliceCode, PoliceContactNo, PoliceEmail, PoliceAddress, PoliceCity, PolicePassword) VALUES (@PoliceCode, @PoliceContactNO, @PoliceEmail, @PoliceAddress, @PoliceCity, @PolicePassword)", con);
                cmd.Parameters.AddWithValue("@PoliceCode", txtCode.Text);
                cmd.Parameters.AddWithValue("@PoliceContactNO", txtContact.Text);
                cmd.Parameters.AddWithValue("@PoliceEmail", txtEmail.Text);
                cmd.Parameters.AddWithValue("@PoliceAddress", txtAddress.Text);
                cmd.Parameters.AddWithValue("@PoliceCity", txtCity.Text);
                cmd.Parameters.AddWithValue("@PolicePassword", EncryptPassword(txtPassword.Text));

                cmd.ExecuteNonQuery();
                GVbind();

                txtCode.Text = " ";
                txtContact.Text = " ";
                txtEmail.Text = " ";
                txtAddress.Text = " ";
                txtPassword.Text = " ";
                txtCity.Text = " ";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Add New Police Station Succssfull')</script>");
            }
        }
    }

    void GVbind()
    {
        DataTable dtbl = new DataTable();


        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM crimereportingdb.tblpolice", con);
        sqlDa.Fill(dtbl);

        GVAddPoliNew.DataSource = dtbl;
        GVAddPoliNew.DataBind();

    }

    private bool checkemail()
    {
        bool emailavailable = false;
        string mycon = "server=localhost;userid=root;password=;database=crimereportingdb";
        string myquery = "Select * from crimereportingdb.tblpolice where PoliceCode='" + txtCode.Text + "'";
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