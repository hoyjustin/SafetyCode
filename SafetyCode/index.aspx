<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>


<asp:Content runat="server" ID="indexlogin" ContentPlaceHolderId="logincart">
</asp:Content>

<asp:Content runat="server" ID="indexhead" ContentPlaceHolderId="main">
       <html>
    <head>
        <title>Home</title>
    </head>
    <body>

	    <!--banner-starts-->
	    <div class="bnr" id="home">
		    <div  id="top" class="callbacks_container">
			    <ul class="rslides" id="slider4">
			        <li>
					    <div class="banner-1"></div>
				    </li>
				    <li>
					    <div class="banner-2"></div>
				    </li>
				    <li>
					    <div class="banner-3"></div>
				    </li>
			    </ul>
		    </div>
		    <div class="clearfix"> </div>
	    </div>
	    <!--banner-ends--> 
        <!--Slider-Starts-Here-->
		<script src="js/responsiveslides.min.js"></script>
		    <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			        // Slideshow 4
			        $("#slider4").responsiveSlides({
			            auto: true,
			            pager: true,
			            nav: false,
			            speed: 500,
			            namespace: "callbacks",
			            before: function () {
			                $('.events').append("<li>before event fired.</li>");
			            },
			            after: function () {
			                $('.events').append("<li>after event fired.</li>");
			            }
			        });

			    });
		    </script>
	    <!--End-slider-script-->
        <form id="form1" runat="server">
            <div align="center">
		        <div class="address new">
			        &nbsp;<asp:Button ID="Button1" runat="server" Text="Training Firm Login" 
                        Width="493px" Font-Bold="True" Font-Size="20pt" Height="65px" />
		        </div>
            </div>
        </form>
    </body>
    </html>
</asp:Content>