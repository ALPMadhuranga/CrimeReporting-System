<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_complaint.aspx.cs" Inherits="user_add_complaint" %>

<%@ Register Src="~/include/navbarUse.ascx" TagPrefix="uc1" TagName="navbarUse" %>
<%@ Register Src="~/include/FooterUse.ascx" TagPrefix="uc1" TagName="FooterUse" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>add complaint</title>

    <style>
        body{
            background:url(imagesbg/imgbg2.jpg);
            background-size:cover;
        }
        .btn{
            width:200px;
            margin-left:250px;
            margin-top:20px;
        }
    </style>
    <link rel="stylesheet" href="../include/userFooter.css" />
     <link rel="stylesheet" href="../include/userNavBar.css" />
</head>
<body>
     <form id="com_form" runat="server" enctype="multipart/form-data">
     <!-- Navbar -->
    <uc1:navbarUse runat="server" ID="navbarUse" />
    <!-- Navbar -->


          <div class="loginbox" style="width:70%; margin: 5% 15%; background: rgba(0, 0, 0, 0.7); padding: 5% 5% 5% 5%; " >

              <h3 style="font-size:35px; text-align:center; font-weight:bold; font-family:'Times New Roman'; color:#f77e05;">Add Your Complaint</h3><br />
              
      <div class="form-group">
        <label for="exampleFormControlInput1" style="color:#fff">Select police station</label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="police station is empty" ForeColor="Red" ControlToValidate="DDLstation"></asp:RequiredFieldValidator>
         <asp:DropDownList ID="DDLstation"  runat="server" AppendDataBoundItems="True" CssClass="form-control" Width="100%">
        </asp:DropDownList>
      </div>
       
     <div class="form-group">
        <label for="exampleFormControlInput1" style="color:#fff">Complaint category</label> 
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="complaint category is empty" ForeColor="Red" ControlToValidate="DropDownCategory"></asp:RequiredFieldValidator>
         <asp:DropDownList ID="DropDownCategory"  runat="server" AppendDataBoundItems="True" CssClass="form-control" Width="100%" placeholder="Select Complaint category">
             <asp:ListItem>Assault </asp:ListItem>
             <asp:ListItem>Bribery and corruption</asp:ListItem>
             <asp:ListItem>Abuse of women or children</asp:ListItem>
             <asp:ListItem>robbery </asp:ListItem>
             <asp:ListItem>property disputes</asp:ListItem>
             <asp:ListItem>murder </asp:ListItem>
             <asp:ListItem>threat and intimidation</asp:ListItem>
             <asp:ListItem>narcotics/ dangerous drugs</asp:ListItem>
             <asp:ListItem>theft </asp:ListItem>
             <asp:ListItem>cybercrime </asp:ListItem>
             <asp:ListItem>criminal offence</asp:ListItem>
             <asp:ListItem>Demonstration/ protest/ strike</asp:ListItem>
             <asp:ListItem>organized crime</asp:ListItem>
             <asp:ListItem>personal complaint</asp:ListItem>
             <asp:ListItem>offence against public property</asp:ListItem>
             <asp:ListItem>treasure hunting</asp:ListItem>
             <asp:ListItem>national security</asp:ListItem>
             <asp:ListItem>terrorism related</asp:ListItem>
             <asp:ListItem>intellectual property dispute</asp:ListItem>
             <asp:ListItem>Environmental issues</asp:ListItem>
             <asp:ListItem>Industrial / labour dispute</asp:ListItem>
             <asp:ListItem>complaint against police</asp:ListItem>
             <asp:ListItem>Foreign employment issues</asp:ListItem>
             <asp:ListItem>traffic and road safety</asp:ListItem>
             <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
      </div>

       <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Complaint Subject</label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Complaint Subject" ControlToValidate="txtComSub" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtComSub" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine" placeholder="Enter th subject of your complaint"></asp:TextBox>
        </div>

          <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Complaint</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Complaint is empty" ControlToValidate="txtComplaint" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtComplaint" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine" placeholder="Enter your complaint briefly"></asp:TextBox>
        </div>

          <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Complaint image 1</label>
              <asp:FileUpload ID="FileUpload_image1" runat="server" CssClass="form-control" />
        </div>

          <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Complaint image 2</label>
              <asp:FileUpload ID="FileUpload_image2" runat="server" CssClass="form-control" />
        </div>

          <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Complaint image 3</label>
              <asp:FileUpload ID="FileUpload_image3" runat="server" CssClass="form-control"  />
        </div>

          <div class="form-group">
           <label for="exampleFormControlInput1" style="color:#fff">Complaint Video (Link)</label>
             <asp:TextBox ID="txtvideolink" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine" placeholder="If you have any video related to the comlaint please upload it your google drive and paste its link here"></asp:TextBox>
        </div>


      <div class="form-group">
      <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-outline-primary" OnClientClick="btnInsert_Click" Text="SUBMIT" OnClick="btnInsert_Click" />
      </div>
          <asp:Label ID="lblHello" runat="server" CssClass="lblHello" Font-Size="10px" Visible="False"></asp:Label><br />
    </div>
         

        <uc1:FooterUse runat="server" ID="FooterUse" />
    </form>
   
</body>
</html>
