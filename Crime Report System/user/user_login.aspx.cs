using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;

public partial class user_user_login : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();
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
            string UserID = txtNIC.Text.Trim();
            using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM crimereportingdb.tbluser WHERE UserNIC = @UserNIC"))
            {
                cmd.Parameters.AddWithValue("@UserNIC", txtNIC.Text.Trim());
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "usertable");

                string pwd1 = txtpass.Text;

                MySqlDataReader dr;
                dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        string id = dr["ID"].ToString();
                        string dbNIC = dr["UserNIC"].ToString();
                        string dbPwd = dr["UserPassword"].ToString();

                        string pwd = DecryptPassword(dbPwd);

                        if (pwd == pwd1)
                        {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            Session["UserNIC"] = UserID;

                            Response.Redirect("add_complaint.aspx");
                            Response.Write("<script LANGUAGE='JavaScript' >alert('Login Succssfull')</script>");
                        }
                        }
                        else
                        {
                            Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Password or User Name')</script>");
                            Response.Redirect("user_login.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Password or User Name')</script>");
                        Response.Redirect("user_login.aspx");
                    }
                }
                con.Close();
                
                }
            }
       
        }