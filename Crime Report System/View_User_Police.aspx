<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_User_Police.aspx.cs" Inherits="View_User_Police" %>

<%@ Register Src="~/include/navbarvPolice.ascx" TagPrefix="uc1" TagName="navbarvPolice" %>


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
            background:url(Police/images/img7.jpg);
            background-size:cover;
        }
         .txtSearch{
             width:300px; height:40px; border-radius:5px; margin-bottom:20px;
         }
          .btnSearch{
            width:100px; height:40px; background-color:#000066; border-radius:5px; color:black; margin-bottom:20px; color:white;
        }
        .btnSearch:hover{
            font-variant-caps:petite-caps; background-color:#3366FF; color:white;
        }
        .btnRefresh{
             width:80px; height:40px; background-color:#330066; border-radius:5px; color:black; margin-bottom:20px; color:white;
        }
        .btnRefresh:hover{
            font-variant-caps:petite-caps; background-color:#9933FF;
        }
    </style>

</head>
<body>
   
    <form id="form1" runat="server">
    <div>
    <div id="layoutSidenav">
      <uc1:navbarvPolice runat="server" ID="navbarvPolice" />
        <div id="layoutSidenav_content">
                
                    <div class="container-fluid">
                        <h1 class="mt-4" style=" color: white; text-shadow: 2px 2px 4px #000000;">USER/View user</h1>

                         <ol class="breadcrumb mb-4" style="background-color:transparent; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
                            <li class="breadcrumb-item active" style="color:white; text-shadow: 2px 2px 4px #000000; font-size:18px; font-weight:600; "> Police Dashboard</li>
                        </ol>

                        <asp:Label ID="UserNIC" runat="server" Text=" "></asp:Label>

                        <asp:TextBox ID="txtSearch" CssClass="txtSearch" runat="server" placeholder="search user using their NIC number"></asp:TextBox>
                            <asp:Button ID="btnSearchUser" CssClass="btnSearch" runat="server" Text="Search" OnClick="btnSearchUser_Click" />
                         <asp:Button ID="btnRefresh" CssClass="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click"/> <br /> <br />

                        <div class="card mb-4" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
                          <div class="card-header"><i class="fas fa-table mr-1"></i>USER List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="GVUser" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"  Width="100%"  >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                   <asp:BoundField DataField="ID" HeaderText="ID" />
                                                    <asp:BoundField DataField="UserName" HeaderText="User Name" />
                                                    <asp:BoundField DataField="UserNIC" HeaderText="User NIC" />
                                                    
                                                    <asp:BoundField DataField="UserAddress" HeaderText="User Address" />
                                                    <asp:BoundField DataField="UserEmail" HeaderText="User Email"  />
                                                    <asp:BoundField DataField="UserGender" HeaderText="User Gender" />
                                                    <asp:BoundField DataField="UserContactNO" HeaderText="User Contact NO" />
                                                     
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:Image ID="UserImage" runat="server"  ImageUrl='<%# Eval("UserImage") %>' Width="200px" BorderColor="Black" BorderWidth="1px" BorderStyle="Groove" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>


                                                
                                                                                               
                                                </Columns>
                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="#330066" Font-Bold="True" ForeColor="White" />
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
