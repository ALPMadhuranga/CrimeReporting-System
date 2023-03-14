
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewMessage.aspx.cs" Inherits="Admin_ViewMessage" %>

<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/dashboard.css" rel="stylesheet"/>
    <link href="Style/DataTable.css" rel="stylesheet"/>
    <link href="Style/btn.css" rel="stylesheet"/>
	
	<script src="Style/bootstrap.bundle.min.js"></script>
    <script src="Style/Chart.min.js"></script>
    <script src="Style/font.js"></script>
    <script src="Style/jquery-3.4.1.min.js"></script>
    <script src="Style/scripts.js"></script>

    <style>
        body{
            background:url(images/imgbgpolice.jpg);
            background-size:cover;
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
                        <h1 class="mt-4" style=" color: white; text-shadow: 2px 2px 4px #000000;">MESSAGE/View Message</h1>

                        <ol class="breadcrumb mb-4" style="background-color:transparent; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
                            <li class="breadcrumb-item active" style="color:black; text-shadow: 2px 2px 4px #000000; font-size:18px; font-weight:600; "> Admin Dashboard</li>
                        </ol>
                        
                        <div class="card mb-4" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-top:30px;">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Message List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="GVUser" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"  Width="100%" OnRowDeleting="GVUser_RowDeleting"  >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="ID" HeaderText="ID" />
                                                    <asp:BoundField DataField="name" HeaderText="Name" />
                                                    <asp:BoundField DataField="email" HeaderText="Email" />
                                                    
                                                    <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                                                    <asp:BoundField DataField="msg" HeaderText="Message" />

                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            
                                                            <asp:ImageButton ImageUrl="~/image/icon/RecrylDelete.png" CommandName="Delete" ToolTip="Delete" runat="server" Width="30px" Height="30px" />
                                                        </ItemTemplate>
                                                
                                                    </asp:TemplateField>
                                              
                                              
                                                    
                                                </Columns>
                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="#CCCC99" Font-Bold="True" ForeColor="Black" />
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
