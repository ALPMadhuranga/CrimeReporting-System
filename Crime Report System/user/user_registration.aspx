<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_registration.aspx.cs" Inherits="user_User_registration" %>

<%@ Register Src="~/include/navbarUse.ascx" TagPrefix="uc1" TagName="navbarUse" %>
<%@ Register Src="~/include/FooterUse.ascx" TagPrefix="uc1" TagName="FooterUse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>user registration</title>
<style>
    body{
        background:url(imagesbg/imgbg2.jpg);
        background-size:cover;
    }
    .btn{
        width:200px;
        margin-left:300px;
    }
</style>
    <link rel="stylesheet" href="../include/userFooter.css" />
     <link rel="stylesheet" href="../include/userNavBar.css" />
</head>
<body>
    <form id="registration" runat="server" style="margin-bottom:20px;">

        <uc1:navbarUse runat="server" ID="navbarUse" />
       
      <div class="loginbox" style="width:70%; margin-left:15%; margin-right:15%; margin-top:5%; background: rgba(0, 0, 0, 0.7); padding: 5% 5% 5% 5%; " >
      <div >
            <h2 style="text-align:center; font-size:35px; font-weight:bold; color:#f77e05;">Register Here</h2>
      <div class="form-group">

            <label for="exampleFormControlInput1" style="color:#fff">Full name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname" ErrorMessage="Full name is empty" ForeColor="Red"></asp:RequiredFieldValidator> &nbsp;
            <asp:TextBox ID="txtFullname" runat="server" CssClass="form-control" placeholder="Enter your full name" AutoCompleteType="Disabled" ></asp:TextBox>
      </div>

      <div class="form-group">
            <label for="exampleFormControlInput1" style="color:#fff">NIC number</label>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNIC" ErrorMessage="NIC No is empty" ForeColor="Red"></asp:RequiredFieldValidator> &nbsp;
            <asp:TextBox AutoCompleteType="Disabled" ID="txtNIC" runat="server" CssClass="form-control" placeholder="Enter your NIC number"></asp:TextBox>
      </div>

      <div class="form-group">
            <label for="exampleFormControlInput1" style="color:#fff">Address</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is empty" ForeColor="Red"></asp:RequiredFieldValidator>
              &nbsp;<asp:TextBox AutoCompleteType="Disabled" ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter your address" TextMode="MultiLine"></asp:TextBox>
      </div>


      <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Email</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmail" ErrorMessage="Email is empty" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="Invalid mail ID" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>&nbsp;
           <asp:TextBox AutoCompleteType="Disabled" ID="txtmail" runat="server" CssClass="form-control" placeholder="Enter your mail ID"></asp:TextBox>
      </div>

      <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownGender" ErrorMessage="Gender is empty" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;
           <asp:DropDownList ID="DropDownGender" runat="server" CssClass="form-control" ForeColor="#000066" placeholder="Select your gender">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
           </asp:DropDownList>
      </div>


      <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Contact No</label>&nbsp;&nbsp;&nbsp;
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtContact" ErrorMessage="Contact No is empty" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;
           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid contact Number" ForeColor="#FF6600" ValidationExpression="@&amp;quot;^7|0|(?:\+94)[0-9]{9,10}$" ControlToValidate="txtContact"></asp:RegularExpressionValidator>&nbsp;
           <asp:TextBox AutoCompleteType="Disabled" ID="txtContact" Value="+94" runat="server" CssClass="form-control" placeholder="Enter your valid contact No"></asp:TextBox>
      </div>

      <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Password</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpass" ErrorMessage="Password is empty" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;&nbsp; 
           <asp:TextBox AutoCompleteType="Disabled"  ID="txtpass" runat="server" CssClass="form-control" placeholder="Enter new password" TextMode="Password"></asp:TextBox><br />

           <label for="exampleFormControlInput1" style="color:#fff">Re-Enter password</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RePass" ErrorMessage="Re-Enter password is empty" ForeColor="Red"></asp:RequiredFieldValidator>
           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password is not matching" ControlToCompare="RePass" ControlToValidate="txtpass" ForeColor="#FF6600"></asp:CompareValidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
           <asp:TextBox ID="RePass" runat="server" CssClass="RePass" placeholder="Re-Enter your Password" AutoCompleteType="Disabled" Width="810px" Height="40px" TextMode="Password"></asp:TextBox>
      </div><br /><br /><br />

      <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Image</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="flupImage" ErrorMessage="Image is empty" ForeColor="Red"></asp:RequiredFieldValidator>
           <asp:FileUpload ID="flupImage" runat="server" CssClass="form-control" ForeColor="#FF6600" /><br /><br />
      </div>

      <div class="form-group"><br /><br />
           <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-outline-warning" Text="SUBMIT" OnClick="btnSubmit_Click" />
      </div>
           <asp:Label ID="lblalreadmsg" runat="server" CssClass="lblalreadmsg" Font-Bold="True" Font-Italic="False" ForeColor="Red" Width="450px" Font-Size="16px"></asp:Label>
      </div>
    </div>
  </form>
     <div >
           <uc1:FooterUse runat="server" ID="FooterUse" />
       </div>
</body>
</html>
