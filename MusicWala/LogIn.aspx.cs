using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString1"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Registration where Email =@email and Password=@password",con);
        cmd.Parameters.AddWithValue("@email", TxtEmail.Text);
        cmd.Parameters.AddWithValue("@password", TxtPass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count>0)
           {
                Response.Redirect("index.html");
            }
        else
           {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Email or Password')</script>");
            }
      
         
    }
       
}
