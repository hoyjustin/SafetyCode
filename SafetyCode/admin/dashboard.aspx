<%@ Page Title="" Language="VB" MasterPageFile="StoreMaster3.master" AutoEventWireup="false" CodeFile="dashboard.aspx.vb" Inherits="dashboard" %>

<asp:Content ID="dashboardlogin" ContentPlaceHolderID="logincart" Runat="Server">
</asp:Content>

<asp:Content ID="dashboardmain" ContentPlaceHolderID="main" Runat="Server">
    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li class="active">Dashboard</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->

    <!--startprofile-->
    &nbsp
    <div class="container">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3 text-center">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <img src="http://placehold.it/380x500" alt="" class="img-rounded img-responsive" />
                    </div>
                    <div class="col-sm-6 col-md-8">
                        <h4>
                            Certified Safety Training</h4>
                        Edmonton, AB
                        <p>
                            Address: 12345 67 ST
                            <br />
                            Phone Number: 7804114111
                            <br />
                            Account created: Nov 21, 2015</p>
                        <!-- Split button -->
                        <div class="btn-group">
                            <a href="manageaccount.aspx" class="btn btn-primary" role="button">Manage Account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--endprofile-->

    <!--start-abt-categories-->
	<div class="abt-shoe">
		<div class="container"> 
            &nbsp
                        <h3>General:</h3>
			<div class="abt-shoe-main">
				<div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="customers.aspx"><img src="../images/customers.jpg" alt="" style='border-bottom:1px solid #d3d3d3;' /></a>
						<h4><a href="customers.aspx">Customer Management</a></h4>
						<p>Check up on your customers. </p>
					</div>
				</div>
				<div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="technicalsupport.aspx"><img src="../images/techsup.jpg" alt="" style='border-bottom:1px solid #d3d3d3' /></a>
						<h4><a href="technicalsupport.aspx">Technical Support</a></h4>
						<p>Need help? </p>
					</div>
				</div>
                <div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						    <a><img src="../images/orders.jpg" alt="" style='border-bottom:1px solid #d3d3d3; z-index:100' /></a>
                            <a><img src="../images/comingsoon.png" style="position: absolute; bottom: 0; right: 15; z-index:5000 width:605px; height:357px;"/></a>
						<h4><a href="#">Orders Management</a></h4>
						<p>Confirm your customer's orders. </p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
    <!--end-abt-categories-->
    <!--start-abt-categories-->
	<div class="abt-shoe">
		<div class="container"> 
            <h3>Inventory Management:</h3>
			<div class="abt-shoe-main">
				<div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="ecourses.aspx"><img src="../images/abt-1.jpg" alt="" style='border-bottom:1px solid #d3d3d3' /></a>
						<h4><a href="ecourses.aspx">Manage E-Courses</a></h4>
						<p>Manage your e-course inventory. </p>
					</div>
				</div>
				<div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="manageproducts.aspx"><img src="../images/abt-3.jpg" alt="" style='border-bottom:1px solid #d3d3d3' /></a>
						<h4><a href="manageproducts.aspx">Manage Products</a></h4>
						<p>Manage your product inventory.</p>
					</div>
				</div>
                <div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="#"><img src="../images/abt-2.jpg" alt="" style='border-bottom:1px solid #d3d3d3' /></a>
                        <a><img src="../images/comingsoon.png" style="position: absolute; bottom: 0; right: 15; z-index:5000 width:605px; height:357px;"/></a>
						<h4><a href="#">Manage Workshops</a></h4>
						<p>Manage your workshop inventory.</p>
					</div>
				</div>
                &nbsp
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
    <!--end-abt-categories-->
</asp:Content>