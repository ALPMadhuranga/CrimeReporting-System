<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_User_Admin.aspx.cs" Inherits="View_User_Admin" %>

<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="customer.css" rel="stylesheet" />
     <link href="Police/style/dashboard.css" rel="stylesheet"/>
    <link href="Police/style/DataTable.css" rel="stylesheet"/>
    <link href="Police/style/btn.css" rel="stylesheet"/>
	
	<script src="Police/style/bootstrap.bundle.min.js"></script>
    <script src="Police/style/Chart.min.js"></script>
    <script src="Police/style/font.js"></script>
    <script src="Police/style/jquery-3.4.1.min.js"></script>
    <script src="Police/style/scripts.js"></script>

    <style>
        body {
            background: url(Admin/images/imgbgpolice.jpg);
            background-size: cover;
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
                  <h1 class="mt-4" style=" color: white; text-shadow: 2px 2px 4px #000000;" >USER/Manage</h1>

                     <ol class="breadcrumb mb-4" style="background-color:transparent; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
                            <li class="breadcrumb-item active" style="color:black; text-shadow: 2px 2px 4px #000000; font-size:18px; font-weight:600; "> Admin Dashboard</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>User List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="GVUser" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"  Width="100%" OnRowCancelingEdit="GVUser_RowCancelingEdit" OnRowDeleting="GVUser_RowDeleting" OnRowEditing="GVUser_RowEditing" OnRowUpdating="GVUser_RowUpdating" >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                   <asp:BoundField DataField="ID" HeaderText="ID" />
                                                    <asp:BoundField DataField="UserName" HeaderText="User Name" />
                                                    <asp:BoundField DataField="UserNIC" HeaderText="User NIC" />
                                                    
                                                    <asp:BoundField DataField="UserAddress" HeaderText="User Address" />
                                                    <asp:BoundField DataField="UserEmail" HeaderText="User Email"  />
                                                    <asp:BoundField DataField="UserGender" HeaderText="User Gender" />

                                                    <asp:BoundField DataField="UserContactNo" HeaderText="User Contact NO" />
                                                    
      
                                                     <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:Image ID="UserImage" runat="server"  ImageUrl='<%# Eval("UserImage") %>' Width="200px" BorderColor="Black" BorderWidth="1px" BorderStyle="Groove" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                
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
        
    </form>
</body>
</html>
