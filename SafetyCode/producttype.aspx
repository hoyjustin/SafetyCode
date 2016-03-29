<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster2.master" AutoEventWireup="false" CodeFile="producttype.aspx.vb" Inherits="producttype" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="desktop.aspx" style="color: #e41622;">Home</a></li>
                    <li class="active" style="color: #e41622;">Product Types</li>
				</ol>
            </div>
        </div>
    </div>
    <!--end-breadcrumbs-->

    <form id="form1" runat="server">
            <div align="center">
		        <div class="address new" style="margin-left: 0px">
			        &nbsp;<img alt="" src="images/ProductsPage.jpg" 
                        style="width: 1059px; height: 486px" /><br /><br />
                    <asp:Button ID="Button3" runat="server" Text="Products" Width="493px" 
                        Font-Bold="True" Font-Size="20pt" Height="65px" BackColor="#e41622" />
                    &nbsp;<asp:Button ID="Button4" runat="server" Text="E-Courses" Width="493px" 
                        Font-Bold="True" Font-Size="20pt" Height="65px" BackColor="#e41622" />
		            <br />
                    <br />
                    <br />
                    <br />
                    <br />
		        </div>
            </div>
        </form>
</asp:Content>


                        