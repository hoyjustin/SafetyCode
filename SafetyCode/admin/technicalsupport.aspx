<%@ Page Title="Technical Support" Language="VB" MasterPageFile="StoreMaster3.master" AutoEventWireup="false" CodeFile="technicalsupport.aspx.vb" Inherits="technicalsupport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="logincart" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    
    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="dashboard.aspx">Dashboard</a></li>
					<li class="active">Technical Support</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->

<div class="container"> 
				<div class="col-md-offset-2 col-md-8">
                </br></br>
    <form id="form1" runat="server">
    <asp:label ID="lblTechSupport" font-Size="Larger" runat="server">If you are having issues with our site, 
        please let us know. Please include a detailed description of the problem, as well as 
        what you were doing before the error occurred. We will get back to you as soon as possible.</asp:label>
    <br /></br>
    <p>
        <asp:TextBox ID="txtSupportForm" runat="server" Font-Size="Larger" Columns="50" 
            Rows="5" Height="186px"></asp:TextBox></br>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Font-Size="Larger" />
    </p>
    </form>
</div>
</div>
</asp:Content>

