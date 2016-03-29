<%@ Page Title="Manage Account" Language="VB" MasterPageFile="StoreMaster4.master" AutoEventWireup="false" CodeFile="demomanageaccount.aspx.vb" Inherits="demomanageaccount" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    

    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="loggedindesktop.aspx" style="color: #e41622;">Home</a></li>
					<li class="active" style="color: #e41622;">Manage Account</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->

    	<div class="container">
    <div class="col-md-offset-2 col-md-8">
    </br>
    </br>
    <form id="form1" runat="server">
    <p>
        <asp:label ID="lblTitle" runat="server" text="Manage Account" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:label>
    </p>
    <p>
        <asp:label ID="lblCustomerName" runat="server" text="Personal Information"></asp:label>
        </div>
        </div>
        <asp:gridview ID="gdvCustomerName" runat="server" AutoGenerateColumns="False" 
            DataSourceID="sqldsCustomerName" HorizontalAlign="Center" >
            <Columns>
                <asp:BoundField DataField="FullName" HeaderText="Name" />
            </Columns>
        </asp:gridview>
        <asp:SqlDataSource ID="sqldsCustomerName" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
            SelectCommand="SELECT GivenNames + ' ' + LastName As FullName FROM customer WHERE (CustomerID = @CustomerID)">
            <SelectParameters>
                <asp:Parameter Name="CustomerID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
	<div class="container">
    <div class="col-md-offset-2 col-md-8">
        <asp:label ID="lblCustomerContact" runat="server" text="Contact Information"></asp:label>
        </div></div>
        <asp:gridview ID="gdvCustomerContact" runat="server" AutoGenerateColumns="False" 
            DataSourceID="sqldsCustomerContact" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="EmailAddress" HeaderText="Email Address" 
                    SortExpression="EmailAddress" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="Municipality" HeaderText="Municipality" 
                    SortExpression="Municipality" />
                <asp:BoundField DataField="ProvinceStateCode" HeaderText="Province/State" 
                    SortExpression="ProvinceStateCode" />
                <asp:BoundField DataField="PostalCode" HeaderText="Postal Code" 
                    SortExpression="PostalCode" />
                <asp:BoundField DataField="PhoneAreaCode" HeaderText="Area Code" 
                    SortExpression="PhoneAreaCode" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" 
                    SortExpression="PhoneNumber" />
                <asp:BoundField DataField="PhoneExtension" HeaderText="Extension" 
                    SortExpression="PhoneExtension" />
            </Columns>
        </asp:gridview>
        <asp:SqlDataSource ID="sqldsCustomerContact" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
            SelectCommand="SELECT EmailAddress, Address1 + ', ' + Address2 As Address, Municipality, ProvinceStateCode, PostalCode, PhoneAreaCode, PhoneNumber, PhoneExtension FROM customer WHERE (CustomerID = @CustomerID)">
            <SelectParameters>
                <asp:Parameter Name="CustomerID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    </br></br>
	<div class="container">
    <div class="col-md-offset-2 col-md-8">
    <p>
        <asp:Button ID="btnEditAccount" runat="server" 
            Text="Edit Account Settings" Width="150px" BackColor="#e41622"/>
    </p>
    <p>
        <asp:Button ID="btnEditPayment" runat="server" 
            Text="Edit Payment Methods" Width="150px" BackColor="#e41622"/>
    </p>
    </div></div>
    </form>
</asp:Content>

