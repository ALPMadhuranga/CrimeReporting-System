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
    MySqlCommand cmd1 = new MySqlCommand();
    MySqlConnection con1 = new MySqlConnection();
    MySqlDataAdapter sda1 = new MySqlDataAdapter();
    DataSet ds1 = new DataSet();
    string cs = "server=localhost;userid=root;password=;database=hospitaldb";

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["PoliceCity"] != null)
        {
            countUser();
            countcompai();
        }

        else
        {
        
        }
    }

    void countUser()
    {

        string cs = "server=localhost;userid=root;password=;database=crimereportingdb";
        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select DISTINCT count(ID) from crimereportingdb.tblcomplain  WHERE ComplainPoliceStation= '" + Session["PoliceCity"] + "' ", con);

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
        MySqlCommand cmd = new MySqlCommand("select count(ID) from crimereportingdb.tblcomplain WHERE ComplainPoliceStation= '" + Session["PoliceCity"] + "' ", con);

        MySqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            int profit = reader.GetInt32(0);
            lblTotalComplaints.Text = profit.ToString();
        }
        con.Close();

    }
}