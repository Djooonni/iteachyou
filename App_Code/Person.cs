using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for User
/// </summary>
public class Person
{
    String userName = "";
    String firstName = "";
    String surname = "";
    String phone = "";
    int status;

	public Person(String uN, String fN, String sN, String st, String ph)
	{
        this.userName = uN;
        this.firstName = fN;
        this.surname = sN;
        this.status = Int32.Parse(st);
        this.phone = ph;
	}
    public String getName()
    {
        return firstName;
    }
    public String getUserName()
    {
        return userName;
    }
    public String getSurname()
    {
        return surname;
    }
    public int getStatus()
    {
        return status;
    }
    public String getPhone()
    {
        return phone;
    }
}
