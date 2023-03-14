<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Complaint_Admin.aspx.cs" Inherits="View_Complaint_Admin" %>

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
        body{
            background:url(Admin/images/imgbgpolice.jpg);
            background-size:cover;
        }
        .txtSearch{
            height:40px;
            width:250px;
            border-radius:5px;
        }
        .btnSearch{ 
                height: 40px; border: 1px solid #00B4CC; background: #00B4CC; text-align: center; color: #fff; border-radius:5px; cursor: pointer; font-size: 15px; width: 100px;
                  }
        .btnSearch:hover{
                font-variant-caps:petite-caps; background: #0066FF;
        }
        .btnRefresh{
                width: 80px; height: 40px; border: 1px solid #00B4CC; background: #009999; text-align: center; color: #fff; border-radius:5px; cursor: pointer; font-size: 15px;
                   }
        .btnRefresh:hover{
                font-variant-caps:petite-caps; background: #006666;
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
                    <h1 class="mt-4" style=" color: white; text-shadow: 2px 2px 4px #000000;">CASES/View Cases</h1>

                        <ol class="breadcrumb mb-4" style="background-color:transparent; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
                            <li class="breadcrumb-item active" style="color:black; text-shadow: 2px 2px 4px #000000; font-size:18px; font-weight:600; "> Admin Dashboard</li>
                        </ol>

                      <asp:TextBox ID="txtSearch" runat="server"  placeholder="search using user NIC Number" CssClass="txtSearch" AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:Button ID="btnSearchCase" runat="server" Text="Search" OnClick="btnSearchCase_Click" CssClass="btnSearch" > </asp:Button>
                        <asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click" CssClass="btnRefresh"/>
                        <br /><br />

                        <div class="card mb-4">                            
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Complaint List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="GVCase" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"  Width="100%"  OnRowDeleting="GVCase_RowDeleting"  OnRowUpdating="GVCase_RowUpdating" >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="ID" HeaderText="ID" />
                                                    <asp:BoundField DataField="UserNIC" HeaderText="User NIC No" />
                                                    <asp:BoundField DataField="ComplainPoliceStation" HeaderText="Relevant Police Station" />
                                                    <asp:BoundField DataField="complant_category" HeaderText="Complant Category" />
                                                    <asp:BoundField DataField="ComplainDateTime" HeaderText="Date & Time of Complaint" />
                                                    <asp:BoundField DataField="ComplainSubject" HeaderText="Complaint Subject" />
                                                    <asp:BoundField DataField="ComplainDec" HeaderText="Complaint Description" />
                                                    

                                                    
                                                    
                                                       <asp:TemplateField HeaderText="Case image 1">
                                                        <ItemTemplate>
                                                            <asp:Image ID="ComplainImage1" runat="server"  ImageUrl='<%# Eval("ComplainImage1") %>' Width="200px" BorderColor="Black" BorderWidth="1px" BorderStyle="Groove" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Case image 2">
                                                        <ItemTemplate>
                                                            <asp:Image ID="ComplainImage2" runat="server"  ImageUrl='<%# Eval("ComplainImage2") %>' Width="200px" BorderColor="Black" BorderWidth="1px" BorderStyle="Groove" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Case image 3">
                                                        <ItemTemplate>
                                                            <asp:Image ID="ComplainImage3" runat="server"  ImageUrl='<%# Eval("ComplainImage3") %>' Width="200px" BorderColor="Black" BorderWidth="1px" BorderStyle="Groove" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="ComplainVideo1" HeaderText="Video Link" />
                                                   

                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:ImageButton ImageUrl="~/image/icon/RecrylDelete.png" CommandName="Delete" ToolTip="Delete" runat="server" Width="30px" Height="30px" />
                                                        </ItemTemplate>
                                                        
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
