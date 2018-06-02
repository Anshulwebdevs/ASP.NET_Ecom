using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class product_summary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pid"] == null || Session["uname"] == null) {
            Response.Redirect("index.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into orders values(@pid,@add)";
        cmd.Parameters.Add("@pid", SqlDbType.Int).Value = Session["pid"];
        cmd.Parameters.Add("@add", SqlDbType.VarChar,500).Value = TextBox1.Text;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        Response.Redirect("index.aspx");
    }
}