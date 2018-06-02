using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pid"] != null)
        {
            Session["pid"]=null;
        }





        SqlDataAdapter adp = new SqlDataAdapter("select * from products order by newid()", ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds = new DataSet();
       
        adp.Fill(ds, 0, 9, "products");
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
        Repeater1.DataBind();


        SqlDataAdapter adp2 = new SqlDataAdapter("select * from products order by newid()", ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds2 = new DataSet();
        
        adp2.Fill(ds2,0,4,"products");

        Repeater2.DataSource = ds2;
        Repeater2.DataBind();

        SqlDataAdapter adp3 = new SqlDataAdapter("select * from products order by newid()", ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds3 = new DataSet();
        adp3.Fill(ds3, 0, 4, "products");
        Repeater3.DataSource = ds3;
        Repeater3.DataBind();
    }
}