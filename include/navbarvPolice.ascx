<%@ Control Language="C#" AutoEventWireup="true" CodeFile="navbarvPolice.ascx.cs" Inherits="include_navbar" %>

<html >
<head>
    <title></title>

    <link href="../admin/style/bootstrap.bundle.min.js" rel="stylesheet"/>
    <link href="../admin/style/DataTable.css" rel="stylesheet"/>

	<script src="../admin/style/bootstrap.bundle.min.js"></script>
    <script src="../admin/style/Chart.min.js"></script>
    <script src="../admin/style/font.js"></script>
    <script src="../admin/style/jquery-3.4.1.min.js"></script>
    <script src="../admin/style/scripts.js"></script>

    <style>
        .btn {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 5px 15px;
  font-size: 15px;
  cursor: pointer;
}
/* Red */
.btn {
  border-color: #680000;
  color: #680000;
  
}

.btn:hover {
  background: #680000;
  color: white;
}

.Name{
    border: 2px solid white;
}

    </style>
</head>
<body>
    
    <div>
    <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="sb-sidenav-menu-heading">
                                
                                 <asp:Label ID="lblHello" runat="server" Text="" CssClass="Name"></asp:Label></div>
                            
                            <a class="nav-link" href="Dashboard.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard</a>

                            <!-- APPOINTMENT Start -->
                            

                             <div class="sb-sidenav-menu-heading">Cases</div>
                            <a class="nav-link" href="../Police/ComplainView.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                View Cases</a
                            >

                            <!-- APPOINTMENT End -->

                            <!-- USER Start -->
                            <div class="sb-sidenav-menu-heading">USER</div>
                           <a class="nav-link" href="../Police/UserManage.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                View</a
                            >
                            <!-- USER End -->

                        
                           

                            

                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <asp:Button ID="btnlogout" runat="server" Text="Log Out" CssClass="btn" OnClick="btnlogout_Click" ></asp:Button>
                        <div class="small">POLICE PANEL</div>
                        CRIME REPORTING
                    </div>
                </nav>
            </div>
    </div>
  
</body>
</html>
