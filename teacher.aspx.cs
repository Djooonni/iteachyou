using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class teacher : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            Label.Text += Session["New"].ToString();
        }
        else {
            Response.Redirect("Default.aspx");
        }

    }
    protected void addCourse_Click(object sender, EventArgs e)
    {
        try { }
        catch(Exception ex){
            Response.Write("Something gone wrong");
        }
    }
    protected void logOut_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Default.aspx");

    }
}
