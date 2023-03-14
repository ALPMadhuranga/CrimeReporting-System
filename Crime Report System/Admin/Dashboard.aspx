<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="admin_Dashboard" %>

<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Dashboard - Admin SL Crime Reporting System</title>

    <link href="Style/dashboard.css" rel="stylesheet"/>
    <link href="Style/DataTable.css" rel="stylesheet"/>
	
	<script src="Style/bootstrap.bundle.min.js"></script>
    <script src="Style/Chart.min.js"></script>
    <script src="Style/font.js"></script>
    <script src="Style/jquery-3.4.1.min.js"></script>
    <script src="Style/scripts.js"></script>
   
</head>
<body style="background:url(images/imgbg3.jpg); background-size:cover;" >
    <form id="form1" runat="server">
    <div>
    <div id="layoutSidenav">
            <uc1:navbarvAdmin runat="server" ID="navbarvAdmin" />


            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4" style=" color: white; text-shadow: 2px 2px 4px #000000;">Dashboard</h1>
                        <ol class="breadcrumb mb-4" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                            <li class="breadcrumb-item active" >Crime Report Admin Dashboard</li>
                        </ol>
                        <div class="row">

                            <div class="col-xl-3 col-md-6" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-bottom:20px;">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body"><asp:Label ID="lblTotalPolice" runat="server" Text="*" Font-Bold="True" Font-Size="50px"></asp:Label></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="ManagePoliceStation.aspx">Total Police Station</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-bottom:20px;">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body"><asp:Label ID="lbltotaluser" runat="server" Text="*" Font-Bold="True" Font-Size="50px"></asp:Label></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="UserManage.aspx">Total User</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-bottom:20px;">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body"><asp:Label ID="lblTotalComp" runat="server" Text="*" Font-Bold="True" Font-Size="50px"></asp:Label></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="ViewCases.aspx">Total Complaints</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>

                          
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-area mr-1"></i>Area Chart Example</div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>Bar Chart Example</div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>DataTable Example</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                
            </div>
        </div>
    </div>
    </form>
</body>
</html>
