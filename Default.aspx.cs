using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
     /*   if (IsPostBack)
        {
            SqlConnection conn= new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string chk = "select count(*) from [user] where userName='" +userName.Text +"'";
            SqlCommand com = new SqlCommand(chk,conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User already exist");
            }

            conn.Close();
            Response.Write("Registration is successful");
        }
        */
        

    }

    private void insert(String table, String att, Person Jooonni)
    {
        String insert = "INSERT INTO [" + table + "](" + att + ")VALUES('" + Jooonni.getUserName() + "', '" + password.Text + "','" + Jooonni.getStatus() + "','" + Jooonni.getName() + "','" + Jooonni.getSurname() + "','" + Jooonni.getPhone() + "'" + ")";
        SqlCommand com = new SqlCommand(insert, conn);
  
        com.ExecuteNonQuery();        
    }

    private void insert(String table, String att, String val)
    {
        string insert = "INSERT INTO [" + table + "](" + att + ")VALUES(" +val + ")";
        SqlCommand com = new SqlCommand(insert, conn);

        com.ExecuteNonQuery();
        Response.Write("registration is successful");       
    }

    private Boolean chkPsw(string p, string p1) {
        return p.Equals(p1);    
    }

    private int id() {
    string c = "SELECT MAX(id) FROM teacher";
    SqlCommand com = new SqlCommand(c, conn);
    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

    return temp+1;
    }




    protected void register_Click(object sender, EventArgs e)
    {
        if (chkPsw(password.Text, password1.Text))
        {
            Person Jooonni = new Person(userName.Text, name.Text, surname.Text, status.SelectedValue,phone.Text);

            try
            {
                conn.Open();
                insert("user","userName, password, status, name, surname, phone",Jooonni);
                if (Jooonni.getStatus()==1)
                {
                    insert("teacher","userName, id","'"+Jooonni.getUserName()+"','"+id()+"'");
                }
                    conn.Close();
            }
            catch (Exception ex)
            {

                Response.Write("ERROR : " + ex.Message + " end");
            }
        }
        else { Response.Write("There are some issue with passwords"); }
    }

    protected void Login_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        String phone = Lphone.Text, psw = Lpassword.Text;
        if (phone.Length<1 || psw.Length<1) {
            Response.Write("<script>alert('A bala nomrevi duzgun yaz')</script>");

        }
        else
        {
            string chk = "SELECT status FROM [user] WHERE phone='" + Lphone.Text + "' and password = '" + Lpassword.Text + "'";
            SqlCommand com = new SqlCommand(chk, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Session["New"] = Lphone.Text;
                Response.Write("you entered successfully");
                Response.Redirect("teacher.aspx");
            }
            else
            {
                if (temp == 2)
                {

                    Session["New"] = Lphone.Text;
                    Response.Write("you entered successfully");
                    Response.Redirect("Manager.aspx");
                }
                else
                {
                    Response.Write("Phone or password is not correct please add phone in ****** format");
                }
            }
        }


    }

}