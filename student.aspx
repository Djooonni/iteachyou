<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="cources"
            DataTextField="name" DataValueField="name">
        </asp:CheckBoxList>&nbsp;</div>
        <asp:SqlDataSource ID="cources" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>"
            SelectCommand="SELECT distinct name, sector FROM [course]"></asp:SqlDataSource>
    </form>
</body>
</html>
