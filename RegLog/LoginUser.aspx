<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginUser.aspx.cs" Inherits="RegLog_LoginUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Style/css/style.css" rel="stylesheet" />
    <link href="../Style/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <h1 align="center">Welcome To Crime Reporting System</h1>    
    <div class="loginbox">
    <img src="../Image/Cover/user login icon.png" alt="Alternate Text" class="user"/>
    <h2>Login Here</h2>
        <form runat="server">
            <table>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr><tr><td></td><td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNIC" ErrorMessage="* User NIC is Emptry" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td></tr>
                <tr>
                    <td>
                        <asp:Label ID="lblusname" runat="server" Text="User NIC" Font-Bold="True" ForeColor="White"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtNIC" runat="server" CssClass="form-control" placeholder="" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr><tr><td></td><td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="* Password is Emptry" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td></tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPass" runat="server" Text="Password" Font-Bold="True" ForeColor="White"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox></td>
                </tr><tr><td></td><td></td></tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnLogin" CssClass="form-control" runat="server" Text="LOGIN" OnClick="btnLogin_Click" /></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
