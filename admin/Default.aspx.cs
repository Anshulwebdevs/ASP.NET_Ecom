using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            
            string iname2 = "data/" + Guid.NewGuid().ToString() + "" + Path.GetExtension(FileUpload1.FileName);
            string iname = "~/"+iname2;
            FileUpload1.SaveAs(MapPath(iname));
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            con.Open();
            string name = TextBox1.Text;
            string brand = TextBox2.Text;
            string size = TextBox3.Text;
            Int32 mrp = Convert.ToInt32(TextBox4.Text);
            Int32 ofp = Convert.ToInt32(TextBox5.Text);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into products values(@name,@brand,@size,@mrp,@ofp,@image,@desc)";
            cmd.Connection = con;
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = name;
            cmd.Parameters.Add("@brand", SqlDbType.VarChar, 50).Value = brand;
            cmd.Parameters.Add("@size", SqlDbType.VarChar, 50).Value = size;
            cmd.Parameters.Add("@mrp", SqlDbType.Int).Value = mrp;
            cmd.Parameters.Add("@ofp", SqlDbType.Int).Value = ofp;
            cmd.Parameters.Add("@image", SqlDbType.VarChar, 500).Value = iname2;
            cmd.Parameters.Add("@desc", SqlDbType.Text).Value = TextBox6.Text;
            cmd.ExecuteNonQuery();
            
            cmd.Dispose();
           

        }
    }
}