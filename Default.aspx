<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>I Teach U</title>
    <link rel="stylesheet" type="text/css" href="default.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            Daxil olun</h1>
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="Lphone" runat="server" placeholder="Mobil nömrəniz..."></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="Lpassword" runat="server" placeholder="Məxfi söz..."></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button CssClass="button" ID="Login" runat="server" Text="Login" OnClick="Login_Click">
                    </asp:Button></td>
            </tr>
        </table>
        <h1>
            Qeydiyyatdan keçməmisiniz?</h1>
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="name" runat="server" placeholder="Adınız..."></asp:TextBox></td>
                <td style="width: 158px">
                    <asp:TextBox ID="surname" runat="server" placeholder="Soyadınız..."></asp:TextBox></td>
            </tr>
            <tr>
                <td>
      
                <asp:TextBox CssClass="double" ID="phone" runat="server" placeholder="Mobil nömrəniz..."></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 26px">
                    <asp:TextBox CssClass="double" ID="userName" runat="server" placeholder="İstifadəçi adınız..."></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox CssClass="double" ID="password" TextMode="Password" runat="server"  placeholder="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                
                    <asp:TextBox  ID="password1" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList CssClass="dropbtton" ID="status" runat="server">
                        <asp:ListItem Value="2">Student</asp:ListItem>
                        <asp:ListItem Value="1">Teacher</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="zero">
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button CssClass="button" ID="register" runat="server" Text="register" OnClick="register_Click">
                    </asp:Button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
