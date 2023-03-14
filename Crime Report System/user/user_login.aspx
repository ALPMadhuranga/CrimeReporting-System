<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_login.aspx.cs" Inherits="user_user_login" %>

<%@ Register Src="~/include/navbarUse.ascx" TagPrefix="uc1" TagName="navbarUse" %>
<%@ Register Src="~/include/FooterUse.ascx" TagPrefix="uc1" TagName="FooterUse" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>user login</title>

    <style>
       
        body{
            background:url(imagesbg/imgbg2.jpg);
            background-size:cover;
        }
        .btn{
             height:40px; width:200px; margin-left:30%;  margin-top:30px;
             }
        .user1{ 
             width: 100px; height: 100px; border-radius: 50%; position: absolute; top: -50px; left: calc(50% - 50px);
              }
         h4{
             padding:0 0 20px; margin:0; text-align:center; font-size: 22px; color:rgb(255, 217, 9);
            }
    </style>
    <link rel="stylesheet" href="../include/userFooter.css" />
     <link rel="stylesheet" href="../include/userNavBar.css" />
</head>
<body>
   <form id="registration" runat="server">
    <!-- Navbar -->
    <uc1:navbarUse runat="server" ID="navbarUse" />
    <!-- Navbar -->

    <div class="loginbox" style="width:50%; color:#fff; margin:5% 25% 10%; background: rgba(0, 0, 0, 0.7); padding: 5% 5% 5% 5%; position:relative; ">
      <img src="images3/userprofilelogo.png" alt="Alternate Text" class="user1"/>
       <h4>User Log In Here</h4>
        <div >

      <div class="form-group">
        <label for="exampleFormControlInput1">User NIC</label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* User name is empty" Font-Size="15px" ForeColor="Red" ControlToValidate="txtNIC"></asp:RequiredFieldValidator>
         <asp:TextBox ID="txtNIC" runat="server" CssClass="form-control" placeholder="Enter your NIC number" AutoCompleteType="Disabled"></asp:TextBox>
      </div>

       <div class="form-group">
           <label for="exampleFormControlInput1">Password</label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="* Password is empty" ForeColor="Red"></asp:RequiredFieldValidator>
           <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" AutoCompleteType="Disabled" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
        </div>



      <div class="form-group">
      <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-outline-warning" Text="Sign In" OnClick="btnlogin_Click"  />
      </div>
    </div>
      </div>


       <div >
           <uc1:FooterUse runat="server" ID="FooterUse" />
       </div>
       
       </form>


</body>
</html>
