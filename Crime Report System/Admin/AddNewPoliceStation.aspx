<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewPoliceStation.aspx.cs" Inherits="Admin_AddNewPoliceStation" %>


<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Add New Police Station</title>

    <link href="Style/dashboard.css" rel="stylesheet"/>
    <link href="Style/DataTable.css" rel="stylesheet"/>
    <link href="Style/btn.css" rel="stylesheet"/>
	
	<script src="Style/bootstrap.bundle.min.js"></script>
    <script src="Style/Chart.min.js"></script>
    <script src="Style/font.js"></script>
    <script src="Style/jquery-3.4.1.min.js"></script>
    <script src="Style/scripts.js"></script>

    <style>
        body { 
    margin:0;
    padding:0;
    background:url(images/imgbgpolice.jpg);
    background-size:cover;
    
}

        .btn{
            margin-top:50px;
            margin-bottom:30px;
            margin-left:80px;

           
        }
        .col-xl-6{
	        padding:  20px 10px 20px 10px ;
	        box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
	        border-radius: 10px;

        }
        canvas{
            height:80px;
        }
    </style>
</head>
<body >

    <form id="form1" runat="server">
         
    <div id="layoutSidenav">
        <uc1:navbarvAdmin runat="server" ID="navbarvAdmin" />
        <div id="layoutSidenav_content">
                
                    <div class="container-fluid">
                        <h1 class="mt-4" style=" color: white; text-shadow: 2px 2px 4px #000000;">POLICE STATION/Add New Police Station</h1>
                        <ol class="breadcrumb mb-4" style="background-color:transparent; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
                            <li class="breadcrumb-item active" style="color:black; text-shadow: 2px 2px 4px #000000; font-size:18px; font-weight:600; "> Admin Dashboard</li>
                        </ol>
                        
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-poll-h mr-1"></i>Main Infromation</div>
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myAreaChart" ></canvas>

                                       
                                      
                                        <span><p>Police Contact NO: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtContact" runat="server"  CssClass="form-control" Width="300px" placeholder="Enter valid contact No"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContact" ErrorMessage="* Contact NO is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                        

                                        <span><p>Police Email: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtEmail" runat="server"  CssClass="form-control" Width="300px" placeholder="Enter valid Email ID"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Email is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                        <span><p>Password: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtPassword" runat="server"  CssClass="form-control" TextMode="Password" Width="300px" placeholder="Enter password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                        <span><p>Confirm Password: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtRePassword" runat="server"  CssClass="form-control" TextMode="Password" Width="300px" placeholder="Re Enter password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="* ReEnter Password is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password is not matching" ControlToCompare="txtRePassword" ControlToValidate="txtPassword" ForeColor="#FF6600"></asp:CompareValidator>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-poll-h mr-1"></i>Location Infromation</div>
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myBarChart" width="100%" height="40"></canvas>

                                       <span><p>Police Code: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtCode" runat="server"  CssClass="form-control" Width="300px" placeholder="Enter police code"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode" ErrorMessage="* Code is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                         <span><p> Police Address: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtAddress" runat="server"  CssClass="form-control" TextMode="MultiLine" Width="300px" placeholder="Enter permenent police station address"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage="* Address is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>
                                       

                                        

                                        <span ><p>Police City: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtCity" runat="server"  CssClass="form-control" Width="300px" placeholder="Enter City of police station"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCity" ErrorMessage="* City is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:Label ID="lblalreademsg" runat="server" Text=""></asp:Label>
                                        </span>

                                        

                                        <asp:Button ID="btnAddNew" runat="server" Text="Insert" CssClass="btn" OnClick="btnAddNew_Click" />
                                        <asp:Label ID="lblerr" runat="server" Text=""></asp:Label>

                                       

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4" style="margin-top:30px;">
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
                                                    <asp:BoundField DataField="PoliceCity" HeaderText="Police City" NullDisplayText="Police City" />
                                                    <asp:BoundField DataField="PolicePassword" HeaderText="Police Password" />
                                           

                                                   
                                                </Columns>
                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="#CCCC99" Font-Bold="True" ForeColor="black" />
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

        <div>
           
        </div>
        
    </form>
</body>
</html>