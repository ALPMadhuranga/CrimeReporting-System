<%@ Control Language="C#" AutoEventWireup="true" CodeFile="navbarvAdmin.ascx.cs" Inherits="include_navbar" %>

<html >
<head>
    <title></title>

    <link href="../Admin/Style/bootstrap.bundle.min.js" rel="stylesheet"/>
    <link href="../Admin/Style/DataTable.css" rel="stylesheet"/>

	<script src="../Admin/Style/bootstrap.bundle.min.js"></script>
    <script src="../Admin/Style/Chart.min.js"></script>
    <script src="../Admin/Style/font.js"></script>
    <script src="../Admin/Style/jquery-3.4.1.min.js"></script>
    <script src="../Admin/Style/scripts.js"></script>

    <style>
        .btn {  border: 2px solid black; background-color: transparent; color: yellow; padding: 5px 15px; font-size: 15px; cursor: pointer; width:150px; margin-left:40px; margin-bottom:10px; margin-top:5px; }

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
            font-size:12px;
            color:white;
             }
    </style>
</head>
<body>
    
    <div>
    <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion" style="width:230px; height:100%;">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="sb-sidenav-menu-heading">
                                
                                 <asp:Label ID="lblHello" runat="server" Text="" CssClass="Name"></asp:Label></div>
                            
                            <a class="nav-link" href="../Admin/Dashboard.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard</a>

                            
                            <!-- Complaint start -->

                             <div class="sb-sidenav-menu-heading">Cases</div>
                            <a class="nav-link" href="../View_Complaint_Admin.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                View Cases</a>
                    

                            <!-- Complaint End -->

                            <!-- USER Start -->
                            <div class="sb-sidenav-menu-heading">USER</div>
                           <a class="nav-link" href="../View_User_Admin.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-user-edit"></i></div>
                                Manage User</a>
                      
                            <!-- USER End -->

                             <!-- USER Start -->
                            <div class="sb-sidenav-menu-heading">Message</div>
                           <a class="nav-link" href="../Admin/ViewMessage.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                View Message</a>
                      
                            <!-- USER End -->

                            <!-- Police station Start -->

                            <div class="sb-sidenav-menu-heading">POLICE STATION</div>
                            <a class="nav-link" href="../Admin/AddNewPoliceStation.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-edit"></i></div>
                                Add New Police Station</a
                            ><a class="nav-link" href="../Admin/ManagePoliceStation.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-user-edit"></i></div>
                                Manage Police Station</a><br /><br /><br />
                            <!-- Police station End -->
                           
                             
                            

                        </div>
                    </div>
                    <asp:Button ID="btnlogout" runat="server" Text="Log Out" CssClass="btn" OnClick="btnlogout_Click" ></asp:Button>
                    <div class="sb-sidenav-footer">

                        <div class="small">ADMIN PANEL</div>
                        CRIME REPORTING
                    </div>
                </nav>
            </div>
    </div>
  
</body>
</html>
