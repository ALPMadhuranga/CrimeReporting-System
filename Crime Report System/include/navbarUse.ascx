<%@ Control Language="C#" AutoEventWireup="true" CodeFile="navbarUse.ascx.cs" Inherits="include_navbarUse" %>
<link rel="stylesheet" href="../style/bootstrap.min.css" />
<script src="../style/jquery-3.2.1.slim.min.js" ></script>
<script src="../style/popper.min.js"></script>
<script src="../style/bootstrap.min.js" ></script>
<link rel="stylesheet" href="userNavBar.css" />


<nav class="navbar navbar-expand-lg navbar-dark  bg-dark ">
  <a class="navbar-brand" href="../index.aspx"><img src="../home page images/crs logo2.png" width="80%" /></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav" >
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
       <asp:HyperLink  CssClass="nav-link active" ID="Hyperlink4" runat="server" NavigateUrl="~/index.aspx">Home</asp:HyperLink>
      </li>
      <li class="nav-item">
        <asp:HyperLink ID="HyperlinkApp" CssClass="nav-link" runat="server" NavigateUrl="~/user/contact_us.aspx">Contact us</asp:HyperLink>
      </li>
      <li class="nav-item">
       <asp:HyperLink ID="Hyperlink1" runat="server" CssClass="nav-link" NavigateUrl="~/user/about_us.aspx">About us</asp:HyperLink>
      </li>
      <li class="nav-item">
       <asp:HyperLink ID="HyperlinkRegister" runat="server" CssClass="nav-link" NavigateUrl="~/user/user_registration.aspx">Registration</asp:HyperLink>
      </li>
       <li class="nav-item">
      <asp:HyperLink ID="HyperlinkSignIn" runat="server" CssClass="nav-link" NavigateUrl="~/user/user_login.aspx">Sign in</asp:HyperLink>
      </li>
        <li class="nav-item">
      <asp:HyperLink  ID="HyperlinkCompaint" runat="server" CssClass="nav-link" NavigateUrl="~/user/add_complaint.aspx">Complaint</asp:HyperLink>
      </li>

         <li class="nav-item">
      <asp:HyperLink  ID="HyperlinkViewCom" runat="server" CssClass="nav-link" NavigateUrl="~/View_Complaint_User.aspx">View Complaint</asp:HyperLink>
      </li>

    </ul>
      <ul class="navbar-nav ml-auto nav-flex-icons">
      <li class="nav-item">
        <asp:Button ID="btnLogout" CssClass="btn1 btn-outline-primary btn-rounded waves-effect" runat="server" OnClick="btnLogout_Click" Text="Log Out"  />
        <asp:Label ID="lblHello" CssClass="lblHello" runat="server" Text="" ForeColor="White"></asp:Label>
     
      </li>
      <li class="nav-item avatar dropdown">
        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-55" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        </a>

        <div class="dropdown-menu dropdown-menu-lg-right dropdown-secondary"
          aria-labelledby="navbarDropdownMenuLink-55">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#"></a>
        </div>
      </li>
    </ul>

  </div>
</nav>