using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;


public partial class Audio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    private void BindGrid()
    {
        string strConnString = ConfigurationManager.ConnectionStrings["DBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select Id, Name from tblFiles";
                cmd.Connection = con;
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                con.Close();
            }
        }
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
        {
            byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);
            string strConnString = ConfigurationManager.ConnectionStrings["DBConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "insert into tblFiles(Name, ContentType, Data) values (@Name, @ContentType, @Data)";
                    cmd.Parameters.AddWithValue("@Name", Path.GetFileName(FileUpload1.PostedFile.FileName));
                    cmd.Parameters.AddWithValue("@ContentType", "audio/mpeg3");
                    cmd.Parameters.AddWithValue("@Data", bytes);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }

}

