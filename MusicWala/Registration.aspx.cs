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

public partial class Registration : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
       
       }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString1"].ConnectionString;
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Registration values(@Name,@Mobile,@Email,@Password,@Address,@favourite)", con);
        cmd.Parameters.AddWithValue("@Name", TxtName.Text);
        cmd.Parameters.AddWithValue("@Mobile", TxtMobile.Text);
        cmd.Parameters.AddWithValue("@Email", TxtEmail.Text);
        cmd.Parameters.AddWithValue("@Password", TxtPass.Text);
        cmd.Parameters.AddWithValue("@Address", TxtAddress.Text);
        cmd.Parameters.AddWithValue("@favourite", TxtFav.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        
        string message = "Registration Successful! ,Thank You for Registration.";
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        sb.Append("<script type = 'text/javascript'>");
        sb.Append("window.onload=function(){");
        sb.Append("alert('");
        sb.Append(message);
        sb.Append("')};");
        sb.Append("</script>");
        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        Response.Redirect("~/LogIn.aspx");
    }
}
