<%@ Page Title="" Language="VB" MasterPageFile="StoreMaster4.master" AutoEventWireup="false" CodeFile="demotakeecourse.aspx.vb" Inherits="demotakeecourse" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="loggedindesktop.aspx" style="color: #e41622;">Home</a></li>
					<li><a href="demoorders.aspx" style="color: #e41622;">Your Orders</a></li>
                    <li><a href="demoorderdetailed.aspx" style="color: #e41622;">Detailed Order</a></li>
                    <li class="active" style="color: #e41622;">Exam Page</li>
				</ol>
           </div>
        </div>
    </div>
    <!--end-breadcrumbs-->

    <!--start-abt-categories-->
	<div class="abt-shoe">
		<div class="container"> 
            &nbsp
			<div class="abt-shoe-main">
				<div class="col-md-offset-2 col-md-8">
					<div class="abt-one">
						<a href="#"><img src="../images/exam.jpg" alt="" style='border-bottom:1px solid #d3d3d3;' /></a>
						<h2><a href="#" style="color: #e41622;">Take Exam Now!</a></h2>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
            &nbsp;
		</div>
	</div>
    <!--end-abt-categories-->

</asp:Content>

