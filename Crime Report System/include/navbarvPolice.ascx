<%@ Control Language="C#" AutoEventWireup="true" CodeFile="navbarvPolice.ascx.cs" Inherits="include_navbar" %>

<html >
<head>
    <title></title>

   <link href="style/dashboard.css" rel="stylesheet"/>
    <link href="style/DataTable.css" rel="stylesheet"/>
    <link href="style/btn.css" rel="stylesheet"/>
	
	<script src="style/bootstrap.bundle.min.js"></script>
    <script src="style/Chart.min.js"></script>
    <script src="style/font.js"></script>
    <script src="style/jquery-3.4.1.min.js"></script>
    <script src="style/scripts.js"></script>

    <style>
        .btn {
  border: 2px solid black;
  background-color: transparent;
  color: yellow;
  padding: 5px 15px;
  font-size: 15px;
  cursor: pointer;
  width:150px;
  margin-left:40px;
  margin-bottom:10px;
}

.btn {
  border-color: dodgerblue;
  color: dodgerblue;
  
}

.btn:hover {
  background: dodgerblue;
  color: black;
  font-variant-caps:small-caps;
  font-weight:bold;
}

.Name{
    border: 1px solid white;
    padding: 2px 2px 2px 2px;
    font-size:14px;
    color:white;
}
.Stationlbl{
    color:darkgrey;
    font-size:12px;
}

    </style>
</head>
<body>
    
    <div>
    <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion" style="width:300px; height:100%;">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="sb-sidenav-menu-heading">
                                <asp:Label ID="lblStation" runat="server" Text="Police Station: -" CssClass="Stationlbl"></asp:Label>
                                 <asp:Label ID="lblHello" runat="server" Text="" CssClass="Name"></asp:Label>
                                
                            </div>
                            
                            <a class="nav-link" href="../Police/Dashboard.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard</a>

                            <!-- Cases Start -->
                            

                             <div class="sb-sidenav-menu-heading">CASES</div>
                            <a class="nav-link" href="../View_Complaint_Police.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                View Cases</a>
                        

                            <!-- Cases End -->

                            <!-- USER Start -->
                            <div class="sb-sidenav-menu-heading">USER</div>
                           <a class="nav-link" href="../View_User_Police.aspx">
                               <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                View User</a>
                     
                            <!-- USER End -->

                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />

                            <br />
                           
                            <asp:Button ID="btnlogout" runat="server" Text="Log Out" CssClass="btn" OnClick="btnlogout_Click" ></asp:Button>
                            

                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">POLICE PANEL</div>
                        CRIME REPORTING
                    </div>
                </nav>
            </div>
    </div>
  
</body>
</html>
