using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Admin_ComplainView : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=crimereporting";



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GVbind();
            PoliceStation();
        }
    }

    protected void GVCesas_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GVCesas.EditIndex = e.NewEditIndex;
        GVbind();
    }

    void GVbind()
    {
        DataTable dtbl = new DataTable();

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM crimereporting.tblcomplain", con);
        sqlDa.Fill(dtbl);

        GVCesas.DataSource = dtbl;
        GVCesas.DataBind();

    }

    void PoliceStation()
    {
        string cs = "server=localhost;userid=root;password=;database=crimereporting";
        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandText = "SELECT ComplainPoliceStation FROM crimereporting.tblcomplain";

        using (var reder = cmd.ExecuteReader())
        {
            while (reder.Read())
            {
                DDLStation.Items.Add(reder.GetString("ComplainPoliceStation"));
            }
        }
        con.Close();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string ComplainPoliceStation = DDLStation.Text;

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();

        MySqlCommand cmd = new MySqlCommand();

        string query = "SELECT * FROM crimereporting.tblcomplain WHERE ComplainPoliceStation='" + @ComplainPoliceStation + "' ";
        cmd.CommandText = query;
        cmd.Connection = con;

        cmd.Parameters.AddWithValue("@ComplainPoliceStation", ComplainPoliceStation);

        DataTable dl = new DataTable();

        MySqlDataAdapter da = new MySqlDataAdapter(cmd);

        da.Fill(dl);
        con.Close();
        GVCesas.DataSource = dl;
        GVCesas.DataBind();
    }
}