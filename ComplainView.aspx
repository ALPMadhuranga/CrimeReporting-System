<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ComplainView.aspx.cs" Inherits="Admin_ComplainView" %>


<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Manage Police Station</title>

    <link href="../Admin/style/dashboard.css" rel="stylesheet"/>
    <link href="../Admin/style/DataTable.css" rel="stylesheet"/>
    <link href="../Admin/style/btn.css" rel="stylesheet"/>
	<script src="../Admin/style/bootstrap.bundle.min.js"></script>
    <script src="../Admin/style/Chart.min.js"></script>
    <script src="../Admin/style/font.js"></script>
    <script src="../Admin/style/jquery-3.4.1.min.js"></script>
    <script src="../Admin/style/scripts.js"></script>

    <style>
        .btn{
            margin-top:50px;
            margin-bottom: 20px;
        }

        .form-control{
           float:left;
           position:absolute;
           margin-left: 52%;
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
                        <h1 class="mt-4">CASES/View</h1>

                       
                        <div class="card mb-4">
                             <asp:DropDownList ID="DDLStation" AppendDataBoundItems="true" runat="server" CssClass="form-control" Width="468px">
                     
                            </asp:DropDownList>
                            <asp:Button ID="btnSearch" CssClass="form-control" runat="server" Text="Search" OnClick="btnSearch_Click"  />
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Cases List</div>
                            <div class="card-body">
                                <div class="table-responsive"> 
                                    <asp:GridView ID="GVCesas" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"  Width="100%" OnRowEditing="GVCesas_RowEditing" >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                   <asp:BoundField DataField="ID" HeaderText="ID" />
                                                    <asp:BoundField DataField="UserNIC" HeaderText="User NIC" />
                                                    <asp:BoundField DataField="ComplainSubject" HeaderText="Subject" />
                                                    <asp:BoundField DataField="ComplainDec" HeaderText="Complain" />
                                                    <asp:BoundField DataField="ComplainDateTime" HeaderText="Date" />
                                                    <asp:BoundField DataField="ComplainPoliceStation" HeaderText="Police Station" />
                                                    
                                                        
                                                    
                                                    

                                                
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            
                                                            <asp:ImageButton ImageUrl="~/image/icon/RecrylDelete.png" CommandName="Delete & Save Database" ToolTip="Delete" runat="server" Width="30px" Height="30px" />
                                                        </ItemTemplate>
                                                       
                                                    </asp:TemplateField>
                                              
                                                    
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
