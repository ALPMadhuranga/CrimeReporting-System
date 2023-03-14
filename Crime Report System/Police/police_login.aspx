<%@ Page Language="C#" AutoEventWireup="true" CodeFile="police_login.aspx.cs" Inherits="Police_police_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Policelogin</title>
    <link href="style/Style2.css" rel="stylesheet" />
    <link rel="stylesheet" href="../style/bootstrap.min.css" />
    <script src="../style/jquery-3.2.1.slim.min.js" ></script>
    <script src="../style/popper.min.js"></script>
    <script src="../style/bootstrap.min.js" ></script>

    <style>
        body{
            background:url(images/img7.jpg);
            background-size:cover;
        } 
    </style>
</head>
<body>
  <form runat="server">

     <div class="loginbox" style="width:50%; color:#fff; margin:10% 25% 10%;  background: rgba(0, 0, 0, 0.8); padding: 5% 5% 5% 5%;">
      <img src="images/policeprofilelogo.png" alt="Alternate Text" class="userlogo1" />
       <h2>Police Log In Here</h2>
         <div >

      <div class="form-group">
        <label for="exampleFormControlInput1">User Name</label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* User name is empty" Font-Size="15px" ForeColor="Red" ControlToValidate="txtPcode"></asp:RequiredFieldValidator>
         <asp:TextBox ID="txtPcode" runat="server" CssClass="form-control" placeholder="Enter your Police City" AutoCompleteType="Disabled"></asp:TextBox>
      </div>

       <div class="form-group">
           <label for="exampleFormControlInput1">Password</label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpass" ErrorMessage="* Password is empty" ForeColor="Red"></asp:RequiredFieldValidator>
           <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" AutoCompleteType="Disabled" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
        </div>

      <div class="form-group">
      <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-outline-warning" Text="Sign In" OnClick="btnlogin_Click" />
      </div>
    </div>
      </div>
       </form>

</body>
</html>
