using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["uname"]!=null)
            {
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
        cmd.CommandText = "select * from users where uname=@uname and upass=@upass";
        cmd.Connection = con;
        string upass = TextBox1.Text;
        string uname = TextBox2.Text;
        cmd.Parameters.Add("@uname", SqlDbType.VarChar, 50).Value = uname;
        cmd.Parameters.Add("@upass", SqlDbType.VarChar,50).Value = upass;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Session["uname"] = uname;
            if (Session["pid"] != null) { Response.Redirect("product_details.aspx"); }
            Response.Redirect("index.aspx");
            
       }
        else
        {
            Response.Write("ddddddddddd");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into users values(@uname,@upass,@uadd)";
        cmd.Connection = con;
        cmd.Parameters.Add("@uname", SqlDbType.VarChar, 50).Value = TextBox3.Text;
        cmd.Parameters.Add("@upass", SqlDbType.VarChar, 50).Value = TextBox5.Text;
        cmd.Parameters.Add("@uadd", SqlDbType.VarChar, 300).Value = TextBox6.Text;
        cmd.ExecuteNonQuery();
        cmd.Dispose();

        Response.Redirect("register.aspx?msg=Account Created ");
        

    }
}