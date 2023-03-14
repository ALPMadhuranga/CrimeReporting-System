<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Complaint_User.aspx.cs" Inherits="View_Complaint_User" %>

<%@ Register Src="~/include/navbarUse.ascx" TagPrefix="uc1" TagName="navbarUse" %>
<%@ Register Src="~/include/FooterUse.ascx" TagPrefix="uc1" TagName="FooterUse" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Complaint</title>

    <style>
        body{
            background:url(user/imagesbg/imgbg2.jpg);
            background-size:cover;
        }

        </style>
    <link rel="stylesheet" href="include/userFooter.css" />
    <link rel="stylesheet" href="include/userNavBar.css" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:navbarUse runat="server" ID="navbarUse" />
    <div>
    
        <div class="container-fluid">
                        <h1 class="mt-4 text-light " style=" color: white; text-shadow: 2px 2px 4px #000000;">CASES/View Cases</h1>

                        <div class="card mb-4">                            
                            <div class="card-header"></div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <asp:GridView ID="GVCase" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"  Width="100%" >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="ID" HeaderText="ID" />
                                                    <asp:BoundField DataField="UserNIC" HeaderText="User NIC No" />
                                                    <asp:BoundField DataField="ComplainPoliceStation" HeaderText="Relevant Police Station" />
                                                    <asp:BoundField DataField="complant_category" HeaderText="Complaint category" />
                                                    <asp:BoundField DataField="ComplainDateTime" HeaderText="Date & time of Complaint" />
                                                    <asp:BoundField DataField="ComplainSubject" HeaderText="Complaint Subject" />
                                                    <asp:BoundField DataField="ComplainDec" HeaderText="Complaint Description" />
                                                    
                                                    
                                                    
                                                    
                                                    <asp:TemplateField HeaderText="Case image 1">
                                                        <ItemTemplate>
                                                            <asp:Image ID="imgDocPic" runat="server"  ImageUrl='<%# Eval("ComplainImage1") %>' Width="200px" BorderColor="Black" BorderWidth="1px" BorderStyle="Groove" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Case image 2">
                                                        <ItemTemplate>
                                                            <asp:Image ID="imgDocPic" runat="server"  ImageUrl='<%# Eval("ComplainImage2") %>' Width="200px" BorderColor="Black" BorderWidth="1px" BorderStyle="Groove" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Case image 3">
                                                        <ItemTemplate>
                                                            <asp:Image ID="imgDocPic" runat="server"  ImageUrl='<%# Eval("ComplainImage3") %>' Width="200px" BorderColor="Black" BorderWidth="1px" BorderStyle="Groove" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:BoundField DataField="ComplainVideo1" HeaderText="Video link" />
                                                  
                                                 </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="#0d4261" Font-Bold="True" ForeColor="White" />
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

    <div>
    
    </div>
        <asp:Label ID="lblHello" runat="server" Visible="False"></asp:Label>
    </div>
        <uc1:FooterUse runat="server" ID="FooterUse" />
    </form>
</body>
</html>
