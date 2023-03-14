<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterUser.aspx.cs"   Inherits="RegLog_RegisterUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Style/css/style.css" rel="stylesheet" />
    <link href="../Style/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        .reg{
            position:center;
        }
    </style>
    </head>
<body>
    <asp:Label ID="Label1" runat="server" CssClass="reg" Text="Register" ForeColor="White" Font-Size="20"></asp:Label>
    <div class="loginbox">
    
        <form runat="server">
            <table style="margin-top:-100px;">
                <tr><td>
                        <asp:Label ID="lblusname" runat="server" Text="Full Name" Font-Bold="True" ForeColor="White"></asp:Label></td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" ErrorMessage="* Full Name is Emtry" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br /> <asp:TextBox ID="txtFullName" CssClass="form-control" runat="server" placeholder=""></asp:TextBox>
                        </td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPass" runat="server" Text="NIC NO" Font-Bold="True"  ForeColor="White"></asp:Label></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNIC" ErrorMessage="* NIC is Emtry" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox CssClass="form-control" ID="txtNIC" runat="server" placeholder=""></asp:TextBox></td>
                </tr><tr><td></td><td></td></tr>
                <tr><td>
                        <asp:Label ID="lblPass0" runat="server" Text="Address" Font-Bold="True"  ForeColor="White"></asp:Label></td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="* Address is Emtry" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br /><asp:TextBox CssClass="form-control" ID="txtAddress" runat="server" placeholder=""></asp:TextBox></td></tr>
                <tr>
                    <td></td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPass1" runat="server" Text="Country" Font-Bold="True"  ForeColor="White"></asp:Label></td>
                    <td>
                     <br />   
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCounty" ErrorMessage="* Contry is Emtry" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox CssClass="form-control" ID="txtCounty" runat="server" placeholder=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPass2" runat="server" Text="Email" Font-Bold="True"  ForeColor="White"></asp:Label></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Invalid Email Address" ForeColor="#66FF33" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                       <br /> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Email is Emtry" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPass3" runat="server" Text="Gender" Font-Bold="True"  ForeColor="White"></asp:Label></td>
                    <td>
                   
                         <asp:DropDownList ID="DropDownListGender" runat="server">
                                                <asp:ListItem>Select Gender</asp:ListItem>
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPass4" runat="server" Text="Contact NO" Font-Bold="True"  ForeColor="White"></asp:Label></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContact" ErrorMessage="* Mobile Number Is Invalid" ForeColor="#66FF33" ValidationExpression="@&amp;quot;^7|0|(?:\+94)[0-9]{9,10}$"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtContact" ErrorMessage="* Contact NO is Emtry" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox CssClass="form-control" ID="txtContact" runat="server" placeholder=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPass5" runat="server" Text="Password" Font-Bold="True"  ForeColor="White"></asp:Label></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPAssword" ErrorMessage="* Password is Emtry" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br /> <asp:TextBox CssClass="form-control" ID="txtPAssword" runat="server" placeholder=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPass6" runat="server" Text="Image" Font-Bold="True"  ForeColor="White"></asp:Label></td>
                    <td>
                        <asp:FileUpload ID="FileUploadImage" CssClass="form-control" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblalreademsg" runat="server"></asp:Label>
                        <a href="LoginUser.aspx">Login</a><br />
                    </td>
                    <td>
                        <asp:Button ID="btnReg" runat="server" Text="Submit" CssClass="form-control" OnClick="btnReg_Click"  />

                    </td>

                    

                </tr>
            </table>
        </form>
    </div>
</body>
</html>
