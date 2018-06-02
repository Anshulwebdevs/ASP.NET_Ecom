using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into msg values(@name,@email,@add)";
        cmd.Connection = con;
        cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar,500).Value = TextBox2.Text;
        cmd.Parameters.Add("@add", SqlDbType.VarChar,500).Value = TextBox4.Text;
        cmd.ExecuteNonQuery();

        cmd.Dispose();
    }
}