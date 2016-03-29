<%@ Page Title="Account Settings" Language="VB" MasterPageFile="StoreMaster4.master" AutoEventWireup="false" CodeFile="demoaccountsettings.aspx.vb" Inherits="demoaccountsettings" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">


    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="loggedindesktop.aspx" style="color: #e41622;">Home</a></li>
                    <li><a href="demomanageaccount.aspx" style="color: #e41622;">Manage Account</a></li>
					<li class="active" style="color: #e41622;">Account Settings</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->

    	<div class="container">
    <div class="col-md-offset-2 col-md-8">
    <form id="form1" runat="server">
    <p>
    </br></br>
        <asp:label ID="lblTitle" runat="server" text="Account Settings" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:label>
    </p>
    <p>
    </div>
    </div>

        <asp:GridView ID="gdvCustomer" runat="server" DataSourceID="sqldsCustomer" 
            AutoGenerateColumns="False" HorizontalAlign="Center">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="GivenNames" HeaderText="Given Names" 
                    SortExpression="GivenNames" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="EmailAddress" HeaderText="Email Address" 
                    SortExpression="EmailAddress" />
                <asp:BoundField DataField="Address1" HeaderText="Address 1" 
                    SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address 2" 
                    SortExpression="Address2" />
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
        </asp:GridView>
        <asp:SqlDataSource ID="sqldsCustomer" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
            SelectCommand="SELECT GivenNames, LastName, EmailAddress, Address1, Address2, Municipality, ProvinceStateCode, PostalCode, PhoneAreaCode, PhoneNumber, PhoneExtension FROM customer WHERE (CustomerID = @CustomerID)" 
            UpdateCommand="UPDATE customer SET GivenNames = @GivenNames, LastName = @LastName, EmailAddress = @EmailAddress, Address1 = @Address1, Address2 = @Address2, Municipality = @Municipality, ProvinceStateCode = @ProvinceStateCode, PostalCode = @PostalCode, PhoneAreaCode = @PhoneAreaCode, PhoneNumber = @PhoneNumber, PhoneExtension = @PhoneExtension WHERE (CustomerID = @CustomerID)">
            <SelectParameters>
                <asp:Parameter Name="CustomerID" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="GivenNames" />
                <asp:Parameter Name="LastName" />
                <asp:Parameter Name="EmailAddress" />
                <asp:Parameter Name="Address1" />
                <asp:Parameter Name="Address2" />
                <asp:Parameter Name="Municipality" />
                <asp:Parameter Name="ProvinceStateCode" />
                <asp:Parameter Name="PostalCode" />
                <asp:Parameter Name="PhoneAreaCode" />
                <asp:Parameter Name="PhoneNumber" />
                <asp:Parameter Name="PhoneExtension" />
                <asp:Parameter Name="CustomerID" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </form>
</asp:Content>

