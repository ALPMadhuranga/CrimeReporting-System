<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewPoliceStation.aspx.cs" Inherits="Admin_AddNewPoliceStation" %>


<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Add New Police Station</title>

    <link href="style/dashboard.css" rel="stylesheet"/>
    <link href="style/DataTable.css" rel="stylesheet"/>
    <link href="style/btn.css" rel="stylesheet"/>
	
	<script src="style/bootstrap.bundle.min.js"></script>
    <script src="style/Chart.min.js"></script>
    <script src="style/font.js"></script>
    <script src="style/jquery-3.4.1.min.js"></script>
    <script src="style/scripts.js"></script>

    <style>
        .btn{
            margin-top:40px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
         
    <div>
    <div id="layoutSidenav">
        <uc1:navbarvAdmin runat="server" ID="navbarvAdmin" />
        <div id="layoutSidenav_content">
                
                    <div class="container-fluid">
                        <h1 class="mt-4">POLICE STATION/Add New Police Station</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Crime Admin Dashboard</li>
                        </ol>
                        
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-area mr-1"></i>Main Infromation</div>
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myAreaChart" width="100%" height="40"></canvas>

                                        <span><p>Police Code: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtCode" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode" ErrorMessage="* Code is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>
                                      
                                        <span><p>Police Contact NO: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtContact" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContact" ErrorMessage="* Contact NO is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                        

                                        <span><p>Police Email: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtEmail" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Email is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                        

                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>Location Infromation</div>
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myBarChart" width="100%" height="40"></canvas>

                                      

                                         <span><p> Police Address: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtAddress" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage="* Address is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>
                                       

                                        

                                        <span ><p>Police City: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtCity" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCity" ErrorMessage="* City is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:Label ID="lblalreademsg" runat="server" Text=""></asp:Label>
                                        </span>

                                        <span><p>Password: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtPassword" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                        

                                        <asp:Button ID="btnAddNew" runat="server" Text="Insert" CssClass="btn" OnClick="btnAddNew_Click" />
                                        <asp:Label ID="lblerr" runat="server" Text=""></asp:Label>

                                       

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Police Station List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                        <asp:GridView ID="GVAddPoliNew" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%">
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="ID" HeaderText="ID" />
                                                    <asp:BoundField DataField="PoliceCode" HeaderText="Police Code" />
                                                    <asp:BoundField DataField="PoliceContactNO" HeaderText="Police Contact NO" />
                                                    
                                                    <asp:BoundField DataField="PoliceEmail" HeaderText="Police Email" />
                                                    <asp:BoundField DataField="PoliceAddress" HeaderText="Police Address" />
                                                    <asp:BoundField DataField="PoliceCity" HeaderText="Image" NullDisplayText="Police City" />
                                                    <asp:BoundField DataField="PolicePassword" HeaderText="Police Password" />
                                           

                                                   
                                                </Columns>
                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                            </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                
                
            </div>
    </div>
    </div>


        



        <div>
           
        </div>
        
    </form>
</body>
</html>
