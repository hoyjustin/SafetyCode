<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster2.master" AutoEventWireup="false" CodeFile="demologin.aspx.vb" Inherits="demologin" %>

<asp:Content runat="server" ID="loginmain" ContentPlaceHolderId="main">
<style>
    .address input[type="text"], .address input[type="password"] {
        border: 1px solid #e41622;
        width: 280px;
    }
</style>
<title>Login</title>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
</script>	
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function () { $(".memenu").memenu(); });</script>				

<body> 
	<!--start-account-->
        <form id="form1" runat="server">
        <div class="container">
            <div class="col-md-offset-2 col-md-8">
                <h1 align="center">
                    Authenticate.</h1>
            </div>
        </div>

	    <div class="account">
		    <div class="container"> 
			    <div class="account-bottom" >
				    <div class="col-md-6 account-left">
					        <div class="account-top heading">
						        <h3 style="color: #e41622">Register</h3>
                                Don't have an account? Sign up now!
					        </div>
					        <div class="address">
						        <span>UserName</span>
						        <input type="text" placeholder="Glover"/>
					        </div>
					        <div class="address">
						        <span>Password</span>
						        <input type="text" placeholder="password!"/>
					        </div>
					        <div class="address">
						        <span>Confirm Password</span>
						        <input type="text" placeholder="password!"/>
					        </div>
                            <div class="address">
						        <span>Email</span>
						        <input type="text" placeholder="example@example.com"/>
					        </div>
                            <div class="address">
						        <span>Security Question</span>
						        <input type="text" placeholder="What is your dog's name?"/>
					        </div>
                            <div class="address">
						        <span>Security Answer</span>
						        <input type="text" placeholder="Bob"/>
					        </div>
					        <div class="address new">
						        &nbsp;
						        &nbsp;<asp:Button ID="Button1" runat="server" 
                                    Text="Register" Width="109px" BackColor="#e41622"/>
					        </div>
				    </div>
				    <div class="col-md-6 account-left">
					    <div class="account-top heading">
						    <h3 style="color: #e41622">Customer Log-In</h3>
					    </div>
					    <div class="address">
						    <span>Username</span>
						    <input type="text" placeholder="Glover"/>
					    </div>
					    <div class="address">
						    <span>Password</span>
						    <input type="password" placeholder="password!"/>
					    </div>
                        &nbsp;
					    <div class="address">
						    <asp:Button ID="Button2" runat="server" Text="Login" Width="102px" BackColor="#e41622"/>
					    </div>
                    </div>
				    <div class="clearfix"> </div>
			    </div>
		    </div>
	    </div>
    </form>
	<!--end-account-->
</body>
</asp:Content>
