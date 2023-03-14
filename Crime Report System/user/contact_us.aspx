<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="user_contact_us" %>

<%@ Register Src="~/include/navbarUse.ascx" TagPrefix="uc1" TagName="navbarUse" %>
<%@ Register Src="~/include/FooterUse.ascx" TagPrefix="uc1" TagName="FooterUse" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="customer.css" rel="stylesheet" />

    
    <style>
        body{
            background:url(imagesbg/imgbg2.jpg);
            background-size:cover;
        }
        .btn{
            width:200px;
            margin-left:270px;
            margin-top:30px;
        }
    </style>
    <link rel="stylesheet" href="../include/userFooter.css" />
     <link rel="stylesheet" href="../include/userNavBar.css" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:navbarUse runat="server" ID="navbarUse" />
    <div>
     <div class="loginbox" style="width:70%; margin: 5% 15%; background: rgba(0, 0, 0, 0.7); padding: 5% 5% 5% 5%; " >
      <div >
          <h2 class="text-light text-center mb-2">Contact US</h2>
          <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Full Name</label>
              <asp:TextBox ID="txtname"  CssClass="form-control" Width="100%" runat="server" placeholder="Enter your full name" AutoCompleteType="Disabled"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Full name is empty" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

          <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Email Address</label>
              <asp:TextBox ID="txtemail"  CssClass="form-control" Width="100%" runat="server" placeholder="Enter your valid Email ID" AutoCompleteType="Disabled"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtemail" runat="server" ErrorMessage="Email is empty" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtemail" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email ID" ForeColor="#ff6600"></asp:RegularExpressionValidator>
        </div>

          <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Mobile Number</label>
              <asp:TextBox ID="txtmobile"  CssClass="form-control" Width="100%" runat="server" Value="+94" AutoCompleteType="Disabled"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtmobile" runat="server" ErrorMessage="Mobile number is empty" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtmobile" ForeColor="#ff6600" runat="server" ErrorMessage="Invalid mobile number" ValidationExpression="@&amp;quot;^7|0|(?:\+94)[0-9]{9,10}$"></asp:RegularExpressionValidator>
        </div>


       <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Message</label>
            <asp:TextBox ID="txtmsg" runat="server" CssClass="form-control" Width="100%" Height="75px" TextMode="MultiLine" placeholder="Enter your message" AutoCompleteType="Disabled"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtmsg" runat="server" ErrorMessage="Message is empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>


      <div class="form-group">
      <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-outline-info" Text="SUBMIT" OnClick="btnInsert_Click"  />
      </div>
          
    </div>
      </div>
    </div>
        <uc1:FooterUse runat="server" ID="FooterUse" />
    </form>
</body>
</html>
