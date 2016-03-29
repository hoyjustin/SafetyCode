<%@ Page Title="Customer Management" Language="VB" MasterPageFile="StoreMaster3.master" AutoEventWireup="false" CodeFile="customers.aspx.vb" Inherits="customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="logincart" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    
    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="dashboard.aspx">Dashboard</a></li>
					<li class="active">Customer Management</li>
				</ol>
			</div>
		</div>
	</div>
	<br />
    </br>
    <form id="form1" runat="server">

        <div style="margin-left: auto; margin-right: auto; text-align: center;" 
        dir="ltr">
    <asp:Label ID="Label1" runat="server" Text="Your Customers: " 
            Font-Size="15pt" ></asp:Label>
    </div>
    </br>

    <asp:gridview ID="gdvCustomers" runat="server" AutoGenerateColumns="False" 
        DataSourceID="sqldsCustomers" DataKeyNames="CustomerID" 
        HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID"
                SortExpression="CustomerID" ReadOnly="True" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="GivenNames" HeaderText="GivenNames" 
                SortExpression="GivenNames" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" 
                SortExpression="EmailAddress" />
            <asp:BoundField DataField="Address1" HeaderText="Address1" 
                SortExpression="Address1" />
            <asp:BoundField DataField="Address2" HeaderText="Address2" 
                SortExpression="Address2" />
            <asp:BoundField DataField="Municipality" HeaderText="Municipality" 
                SortExpression="Municipality" />
            <asp:BoundField DataField="ProvinceStateCode" HeaderText="ProvinceStateCode" 
                SortExpression="ProvinceStateCode" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" 
                SortExpression="PostalCode" />
            <asp:BoundField DataField="PhoneAreaCode" HeaderText="PhoneAreaCode" 
                SortExpression="PhoneAreaCode" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                SortExpression="PhoneNumber" />
            <asp:BoundField DataField="PhoneExtension" HeaderText="PhoneExtension" 
                SortExpression="PhoneExtension" />
        </Columns>
    </asp:gridview>
    <asp:SqlDataSource ID="sqldsCustomers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        
        
        
            SelectCommand="SELECT [CustomerID], [LastName], [GivenNames], [EmailAddress], [Address1], [Address2], [Municipality], [ProvinceStateCode], [PostalCode], [PhoneAreaCode], [PhoneNumber], [PhoneExtension] FROM [customer] WHERE ([EmployeeSalesRepID] = @EmployeeSalesRepID)" 
            DeleteCommand="DELETE FROM [customer] WHERE [CustomerID] = @CustomerID" 
            InsertCommand="INSERT INTO [customer] ([CustomerID], [LastName], [GivenNames], [EmailAddress], [Address1], [Address2], [Municipality], [ProvinceStateCode], [PostalCode], [PhoneAreaCode], [PhoneNumber], [PhoneExtension]) VALUES (@CustomerID, @LastName, @GivenNames, @EmailAddress, @Address1, @Address2, @Municipality, @ProvinceStateCode, @PostalCode, @PhoneAreaCode, @PhoneNumber, @PhoneExtension)" 
            UpdateCommand="UPDATE [customer] SET [LastName] = @LastName, [GivenNames] = @GivenNames, [EmailAddress] = @EmailAddress, [Address1] = @Address1, [Address2] = @Address2, [Municipality] = @Municipality, [ProvinceStateCode] = @ProvinceStateCode, [PostalCode] = @PostalCode, [PhoneAreaCode] = @PhoneAreaCode, [PhoneNumber] = @PhoneNumber, [PhoneExtension] = @PhoneExtension WHERE [CustomerID] = @CustomerID">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="GivenNames" Type="String" />
            <asp:Parameter Name="EmailAddress" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="Municipality" Type="String" />
            <asp:Parameter Name="ProvinceStateCode" Type="String" />
            <asp:Parameter Name="PostalCode" Type="String" />
            <asp:Parameter Name="PhoneAreaCode" Type="Int32" />
            <asp:Parameter Name="PhoneNumber" Type="Int32" />
            <asp:Parameter Name="PhoneExtension" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="EmployeeSalesRepID" DefaultValue="103" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="GivenNames" Type="String" />
            <asp:Parameter Name="EmailAddress" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="Municipality" Type="String" />
            <asp:Parameter Name="ProvinceStateCode" Type="String" />
            <asp:Parameter Name="PostalCode" Type="String" />
            <asp:Parameter Name="PhoneAreaCode" Type="Int32" />
            <asp:Parameter Name="PhoneNumber" Type="Int32" />
            <asp:Parameter Name="PhoneExtension" Type="Int32" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>

