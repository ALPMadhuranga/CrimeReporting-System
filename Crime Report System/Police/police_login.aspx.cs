using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Police_police_login : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();

    string cs = "server=localhost;userid=root;password=;database=crimereportingdb";
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "server=localhost;userid=root;password=;database=crimereportingdb";
        con.Open();
    }

    /*method DecryptPassword:*/
    private string DecryptPassword(string EncryptedPass)
    {
        byte[] bytes = Convert.FromBase64String(EncryptedPass);
        string DecryptedPassword = System.Text.Encoding.Unicode.GetString(bytes);
        return DecryptedPassword;
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        using (con)
        {
            string PoliceCity = txtPcode.Text.Trim();
            using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM crimereportingdb.tblpolice WHERE PoliceCity = @PoliceCity"))
            {
                cmd.Parameters.AddWithValue("@PoliceCity", txtPcode.Text.Trim());
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "tblpolice");

                string pwd1 = txtpass.Text;

                MySqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    string id = dr["ID"].ToString();
                    string dbCity = dr["PoliceCity"].ToString();
                    string dbPwd = dr["PolicePassword"].ToString();

                    string pwd = DecryptPassword(dbPwd);

                    if (pwd == pwd1)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            Session["PoliceCity"] = PoliceCity;

                            Response.Write("<script LANGUAGE='JavaScript' >alert('Login Succssfully')</script>");
                            Response.Redirect("~/Police/Dashboard.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Password or Doctor ID')</script>");
                        Response.Redirect("police_login.aspx");
                    }
                }
                con.Close();
            }
        }
    }
}