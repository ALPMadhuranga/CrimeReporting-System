<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_login.aspx.cs" Inherits="Admin_Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adminlogin</title>

    <style>
        body {  margin:0; padding:0; background:url(images/adminloginbg1.jpg); background-size:cover; font-family:sans-serif; }
        
        .logo img{ position:center; margin-top:10px; margin-left:45%; }

        .lblusname, .lblpass{ font-weight:bold; color:#fff; font-size:17px; margin-left:80px; }

        .txtpass, .txtNIC{ border: none; border-bottom: 1px solid #fff; background: transparent; outline: none; height: 40px; color: #cccccc; font-size: 16px; margin-left:15px; margin-top:30px; }

        ::placeholder{ color:rgba(255,255,255,.5); font-size:15px; }

        .btnsubmit{ border: none; outline: none; height: 40px; width: 150px; background: #428bca; color: #fff; font-size: 18px; border-radius: 20px; margin-top: 40px; margin-left:150px; width:200px; }

        .btnsubmit:hover{ cursor: pointer; background: #660066; color: #fff; }

        .btnforget{ font-size:16px; font-weight:700; text-decoration:none; color:#cccccc; }

        .btnforget:hover{ text-decoration:underline; }
    </style>
</head>
<body>
      
        <nav style=" width:100%; height:80px; background:black; overflow:auto;">
            <div class="logo"><img src="../home page images/crs logo2.png" /> </div>
        </nav>

   <div class="loginbox" style=" width: 600px; height: 520px; background: rgba(0, 0, 0, 0.7); color: #fff; top: 50%; left: 50%; position: absolute; transform: translate(-50%, -50%); box-sizing: border-box; padding: 70px 30px; margin-top: 60px; color:white; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
       <img src="images/login_icon.png" alt="Alternate Text" class="user" style=" width: 150px; height: 150px; border-radius: 50%; position: absolute; top: -70px; left: calc(50% - 50px);"/>

       <h2 style="padding:0 0 20px; margin:0; text-align:center; font-size: 22px; color:rgb(255, 217, 9);">Admin Log In Here</h2>
       <form runat="server">
           <asp:Label ID="lblusname" CssClass="lblusname" runat="server" Text="User name" ></asp:Label>
           <asp:TextBox ID="txtNIC" runat="server" CssClass="txtNIC" placeholder="Enter your NIC No" AutoCompleteType="Disabled"></asp:TextBox><br />


           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNIC" ErrorMessage="User name is empty" Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
           <br />


           <asp:Label ID="lblPass" CssClass="lblpass" runat="server" Text="Password" ></asp:Label>
            <asp:TextBox ID="txtPass" runat="server" CssClass="txtpass" placeholder="Enter your password" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is empty" Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
           <br />


           <asp:Button ID="btnlogin" Text="Sign In" runat="server" CssClass="btnsubmit" OnClick="btnlogin_Click"/>
           <br />
           <br />
           <br /><br />
       </form>
   </div>
</body>
</html>
