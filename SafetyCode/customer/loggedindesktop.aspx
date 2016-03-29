<%@ Page Title="" Language="VB" MasterPageFile="StoreMaster4.master" AutoEventWireup="false" CodeFile="loggedindesktop.aspx.vb" Inherits="loggedindesktop" %>

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
                            Penny Jane, Glover</h4>

                        Customer ID: 771
                        <p>
                            email@example.com
                            <br />
                            www.somewebsite.com
                            <br />
                            Account created: Nov 21, 2015</p>
                        <!-- Split button -->
                        <div class="btn-group">
                            <a href="demomanageaccount.aspx" class="btn btn-primary" role="button">Manage Profile</a>
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
			<div class="abt-shoe-main">
				<div class="col-md-6 abt-shoe-left">
					<div class="abt-one">
						<a href="demoorders.aspx"><img src="../images/orders.jpg" alt="" style='border-bottom:1px solid #d3d3d3' /></a>
						<h4><a href="demoorders.aspx" style="color: #e41622;">View Your Orders</a></h4>
					</div>
				</div>
				<div class="col-md-6 abt-shoe-left">
					<div class="abt-one">
						<a href="../producttype.aspx"><img src="../images/buy.jpg" alt="" style='border-bottom:1px solid #d3d3d3;' /></a>
						<h4><a href="../producttype.aspx" style="color: #e41622;">Browse Our Products</a></h4>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
            &nbsp;
		</div>
	</div>
    <!--end-abt-categories-->

</asp:Content>

