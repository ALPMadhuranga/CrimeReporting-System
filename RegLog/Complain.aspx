<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Complain.aspx.cs" Inherits="User_Complain" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
  
     <link href="../Style/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../admin/style/btn.css" rel="stylesheet"/>

    <link href="style/profileimage.css" rel="stylesheet"/>
	
	<script src="../admin/style/bootstrap.bundle.min.js"></script>
    <script src="../admin/style/Chart.min.js"></script>
    <script src="../admin/style/font.js"></script>
    <script src="../admin/style/jquery-3.4.1.min.js"></script>
    <script src="../admin/style/scripts.js"></script>
<style>
        .btn{
            margin-top:50px;
            margin-bottom: 20px;
        }

        .form-control{
           float:left;
           position:absolute;
        }
        .auto-style1 {
            width: 100%;
            border: 1px solid #0062CC;
        }
        .auto-style3 {
            width: 300px;
            height: 3px;
        }
        .auto-style6 {
            width: 301px;
            height: 3px;
        }
        .auto-style7 {
            width: 348px;
            height: 45px;
        }
        .auto-style8 {
            width: 300px;
            height: 45px;
        }
        .auto-style9 {
            height: 45px;
        }
        .auto-style13 {
            width: 301px;
            height: 46px;
        }
        .auto-style14 {
            width: 300px;
            height: 46px;
        }
        .auto-style15 {
            height: 46px;
        }
        .auto-style16 {
            height: 3px;
        }
        .auto-style17 {
            width: 278px;
            height: 45px;
        }
        .auto-style18 {
            width: 278px;
            height: 46px;
        }
        .auto-style19 {
            width: 278px;
            height: 3px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
    <div>
        
    <div id="layoutSidenav">
    

        <div id="layoutSidenav_content">
                
                    <div class="container-fluid">
                        <h1 class="mt-4">
                            <h1 class="mt-4">Welcome</h1>
                            <asp:Label ID="lblHello" runat="server" Font-Size="10pt"></asp:Label>
                        </h1>
                      
                        

                        <h1 class="mt-4">Complain</h1>
    
                        
                        <div class="card mb-4">
                        
                            <div class="card-body">
                                <div class="table-responsive">
                                       
                                   


                                 

                                    <asp:Panel ID="pnlEditUSer" runat="server">
                                        
                                        <asp:Label ID="Label5" runat="server" Text="Select Police Station:"></asp:Label>
                                        <br />
                                        <asp:DropDownList ID="DDLStation" AppendDataBoundItems="true" runat="server" CssClass="form-control" Width="468px">
                     
                                        </asp:DropDownList>
                                        <br />

                                       
                                        <br />
                                     <br />
                                        <asp:Label ID="Label1" runat="server" Text="Complain Subject:"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtComplainSubject" runat="server"  CssClass="form-control" Width="50%"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label2" runat="server" Text="Complain:"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtComplain" runat="server"  CssClass="form-control" Width="50%"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label3" runat="server" Text="Complain Image 1:"></asp:Label>
                                         <br />
                                        <asp:FileUpload ID="FileUploadImage1" runat="server" />
                                        <br />
                                        <asp:Label ID="Label4" runat="server" Text="Complain Image 2:"></asp:Label>
                                        <br />
                                        <asp:FileUpload ID="FileUploadImage2" runat="server" />
                                        <br />
                                        <asp:Label ID="Label6" runat="server" Text="Complain Image 3:"></asp:Label>
                                        <br />
                                        <asp:FileUpload ID="FileUploadImage3" runat="server" />
                                        <br />
                                        <asp:Label ID="Label7" runat="server" Text="Complain Video 1:"></asp:Label>
                                        <br />
                                        <asp:FileUpload ID="FileUploadVideo1" runat="server" />
                                        <br />
                                        <asp:Label ID="Label8" runat="server" Text="Complain Video 2:"></asp:Label>
                                        <br />
                                        <asp:FileUpload ID="FileUploadVideo2" runat="server" />
                                        <br />

                             

                                        <asp:Button ID="btnInsertEdit" runat="server" Text="Insert" CssClass="btn" OnClick="btnInsertEdit_Click" />
                                        
                                      
                                        <br />


                                    </asp:Panel>

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