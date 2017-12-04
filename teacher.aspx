<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher.aspx.cs" Inherits="teacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label" runat="server" Text="Welcome"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="logOut" runat="server" Text="Exit" OnClick="logOut_Click" /><br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Azerbaycan Dili</asp:ListItem>
            <asp:ListItem>Fizika</asp:ListItem>
            <asp:ListItem>Kimya</asp:ListItem>
            <asp:ListItem>Riyaziyyat</asp:ListItem>
            <asp:ListItem>Yeni</asp:ListItem>
        </asp:DropDownList>&nbsp;
        <asp:DropDownList ID="sector" runat="server">
            <asp:ListItem>Rus</asp:ListItem>
            <asp:ListItem>Azerbaycan</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="location" placeholder="mekan" runat="server"></asp:TextBox>
        <asp:TextBox ID="price" placeholder="qiymet" runat="server"></asp:TextBox>
        <asp:TextBox ID="time"  placeholder="vaxt" runat="server"></asp:TextBox>
        <asp:Button ID="addCourse" runat="server" Text="Add" OnClick="addCourse_Click" />
        </div>
    </form>
</body>
</html>
