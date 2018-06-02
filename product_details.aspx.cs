using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class product_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["pid"] != null) { Session["pid"] = Request["pid"]; }
        if (Session["uname"] == null)
        {
            Response.Redirect("Register.aspx?pid=" + Session["pid"] + "&msg=Please Login First");
        }
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from products where pid=@pid";
        cmd.Connection = con;
        cmd.Parameters.Add("@pid", SqlDbType.Int).Value =  Session["pid"];
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Label1.Text = dr["pname"].ToString();
        Image1.ImageUrl = dr["image"].ToString();
        Label7.Text = dr["desc"].ToString();
        Label2.Text = dr["pbrand"].ToString();
        Label3.Text = dr["pbrand"].ToString() + " " + dr["pname"].ToString();

        Label4.Text = dr["psize"].ToString();
        Label5.Text = dr["mrp"].ToString();
        Label6.Text = dr["ofp"].ToString();
        //cmd.ExecuteNonQuery();
        cmd.Dispose();
    }
}