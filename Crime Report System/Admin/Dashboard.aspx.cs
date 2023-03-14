using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
public partial class admin_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        countUser();
        countPolice();
        countcompai();
    }
    void countUser()
    {
        string cs = "server=localhost;userid=root;password=;database=crimereportingdb";
        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select count(ID) from crimereportingdb.tbluser", con);

        MySqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            int profit = reader.GetInt32(0);
            lbltotaluser.Text = profit.ToString();
        }
        con.Close();
    }
    void countcompai()
    {
        string cs = "server=localhost;userid=root;password=;database=crimereportingdb";
        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select count(ID) from crimereportingdb.tblcomplain", con);

        MySqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            int profit = reader.GetInt32(0);
            lblTotalComp.Text = profit.ToString();
        }
        con.Close();
    }
    void countPolice()
    {
        string cs = "server=localhost;userid=root;password=;database=crimereportingdb";
        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select count(ID) from crimereportingdb.tblpolice", con);

        MySqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            int profit = reader.GetInt32(0);
            lblTotalPolice.Text = profit.ToString();
        }
        con.Close();

    }
}