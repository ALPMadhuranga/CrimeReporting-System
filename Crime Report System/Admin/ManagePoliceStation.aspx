<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagePoliceStation.aspx.cs" Inherits="Admin_ManagePoliceStation" %>

<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Manage Police Station</title>

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
            margin-bottom: 20px;
            margin-left:20px;
        }

        .form-control{
           float:left;
           position:absolute;
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
                        <h1 class="mt-4" style=" color: white; text-shadow: 2px 2px 4px #000000;">POLICE STATION/Manage</h1>
                        <ol class="breadcrumb mb-4" style="background-color:transparent; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
                            <li class="breadcrumb-item active" style="color:black; text-shadow: 2px 2px 4px #000000; font-size:18px; font-weight:600; "> Admin Dashboard</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>POLICE STATION List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="GVAddPoliNew" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"  Width="100%" OnRowCancelingEdit="GVAddPoliNew_RowCancelingEdit" OnRowDeleting="GVAddPoliNew_RowDeleting" OnRowEditing="GVAddPoliNew_RowEditing" OnRowUpdating="GVAddPoliNew_RowUpdating">
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                   <asp:BoundField DataField="ID" HeaderText="ID" />
                                                    <asp:BoundField DataField="PoliceCode" HeaderText="Police Code" />
                                                    <asp:BoundField DataField="PoliceContactNo" HeaderText="Police Contact NO" />
                                                    
                                                    <asp:BoundField DataField="PoliceEmail" HeaderText="Police Email" />
                                                    <asp:BoundField DataField="PoliceAddress" HeaderText="Police Address" />
                                                    <asp:BoundField DataField="PoliceCity" HeaderText="Police City" NullDisplayText="Police City" />
                                                    <asp:BoundField DataField="PolicePassword" HeaderText="Police Password" />
                                           

                                                
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:ImageButton ImageUrl="~/image/icon/Edit.png" CommandName="Edit" ToolTip="Edit" runat="server" Width="30px" Height="30px" />
                                                            <asp:ImageButton ImageUrl="~/image/icon/RecrylDelete.png" CommandName="Delete" ToolTip="Delete" runat="server" Width="30px" Height="30px" />
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:ImageButton ImageUrl="~/image/icon/Save.png" CommandName="Update" ToolTip="Update" runat="server" Width="30px" Height="30px" />
                                                            <asp:ImageButton ImageUrl="~/image/icon/Cancel.png" CommandName="Cancel" ToolTip="Cancel" runat="server" Width="30px" Height="30px" />
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                              
                                                    
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
    </div>
                                        <div>
                                            
        </div>
        
        
        
    </form>
</body>
</html>
