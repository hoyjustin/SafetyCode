<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster2.master" AutoEventWireup="false" CodeFile="demoaboutus.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="desktop.aspx" style="color: #e41622;">Home</a></li>
                    <li class="active" style="color: #e41622;">About Us</li>
				</ol>
            </div>
        </div>
    </div>
    </br></br>
    <!--end-breadcrumbs-->

    <div class="container">
    <div class="col-md-offset-2 col-md-8">
    <form id="form1" runat="server">
    Certified Safety Training specializes in offering products, E-Courses, and 
    workshops.&nbsp; With our online capabilities we can meet your safety needs, 
    whenever, whereever. Our Products can be delivered right to your door; our 
    E-Courses can be taken online; and our Workshops can be reviewed and signed-up 
    for online.<br />
    <br />
    <hr />
    <br />
    <b>AVAILABLE SERVICES OFFERED ONLINE OR IN PERSON.</b><br />
    <br />
    <table>
        <tr>
            <td class="modal-sm" style="width: 280px">
                1) PRODUCTS<br />
                <br />
                info about products here.<br />
            </td>
            <td class="style4" style="width: 105px">
                &nbsp;</td>
            <td class="style4" style="width: 280px">
                2) WORKSHOPS<br />
                <br />
                Info about workshops here.</td>
            <td class="style1" style="width: 71px">
                &nbsp;</td>
            <td class="style1" style="width: 280px">
                3) E-COURSES<br />
                <br />
                Info about e-courses here.<br />
            </td>
        </tr>
        </table>
    <br />
    <br />
    <hr />
    <br />
    <b>TESTIMONIALS</b><br />
    <br />
    <table>
        <tr>
            <td class="style2" style="width: 373px">
                I took an online course with Certified Training Firm, it was convenient, 
                affordable, and worth my time.<br />
                <br />
                <B>Customer123 | EDMONTON, CANADA</B><br />
            </td>
            <td class="style4" style="width: 57px">
            </td>
            <td class="style1" style="width: 379px">
                &quot;I was able to order my products online, and study for my OHS test. Convenient!&quot;<br />
                <br />
                <B>COMPANY 123 | LETHBRIDGE, CANADA</B><br />
            </td>
        </tr>
        <tr>
            <td class="style2" style="width: 373px; height: 20px;">
            </td>
            <td class="style4" style="width: 57px; height: 20px;">
            </td>
            <td class="style1" style="width: 379px; height: 20px;">
            </td>
        </tr>
        <tr>
            <td class="style3" style="width: 373px">
                &quot;We 
                were able to sign up for a workshop that was coming to Calgary. This helped 
                saved us money, and time--we didn&#39;t have to leave Calgary!!&quot;<br />
                <br />
                <B>COMPANY 123 | CALGARY, CANADA</B><br />
            </td>
            <td class="style5" style="width: 57px">
                &nbsp;</td>
            <td class="style6" style="width: 379px">
                &quot;We ordered a parcel 
                to come in from Certified Training Firm, same day delivery!&quot;<br />
                <br />
                <B>COMPANY 123 | EDMONTON, CANADA</B></td>
        </tr>
    </table>
    <br />
    <hr />
    <b>CONTACT US</b><br />
    <table>
        <tr>
            <td class="style2" style="width: 457px">
                <br />
                <img alt="" src="images/map.png" style="width: 444px; height: 323px" /></td>
            <td class="style4" style="width: 63px">
                &nbsp;</td>
            <td class="style1" style="width: 509px">
                <br />
                Name:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
                <input id="Text3" type="text" /><br />
                <br />
                Email:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Text4" type="text" /><br />
                <br />
                Inquiry:
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="155px" Width="289px"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="89px" />
            </td>
        </tr>
    </table>
    <br />
    For immediate assistance, you can reach us via our 24 hour help line: 
    1-800-111-1111.</form>
    </div>
    </div>

</asp:Content>

