<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster2.master" AutoEventWireup="false" CodeFile="desktop.aspx.vb" Inherits="desktop" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li class="active" style="color: #e41622;">Home</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->

        <form id="form1" runat="server">
            <div align="center">
		        <div class="address new">
			        &nbsp;<asp:Button ID="Button1" runat="server" Text="Customer Login" 
                        Width="493px" Font-Bold="True" Font-Size="20pt" Height="65px" 
                        BackColor="#666666" />
		        </div>
            </div>
        </form>

    <!--start-abt-categories-->
	<div class="abt-shoe">
		<div class="container"> 
            &nbsp
			<div class="abt-shoe-main">
				<div class="col-md-offset-2 col-md-8">
					<div class="abt-one">
						<a href="producttype.aspx"><img src="images/buy.jpg" alt="" style='border-bottom:1px solid #d3d3d3;' /></a>
						<h4><a href="producttype.aspx" style="color: #e41622;">Browse Our Products</a></h4>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
            &nbsp;
		</div>
	</div>
    <!--end-abt-categories-->

</asp:Content>

