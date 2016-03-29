<%@ Page Title="Payment Methods" Language="VB" MasterPageFile="StoreMaster4.master" AutoEventWireup="false" CodeFile="demopaymentmethods.aspx.vb" Inherits="demopaymentmethods" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">


    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="loggedindesktop.aspx" style="color: #e41622;">Home</a></li>
                    <li><a href="demomanageaccount.aspx" style="color: #e41622;">Manage Account</a></li>
					<li class="active" style="color: #e41622;">Payment Methods</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->

	<div class="container">
    <div class="col-md-offset-2 col-md-8">
    <form id="form1" runat="server">
    <p>
    </br>
        <asp:label ID="lblTitle" runat="server" text="Payment Methods" 
            Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:label>
    </p>
    <p>
        <asp:label ID="lblAccounts" runat="server" text="Credit Accounts"></asp:label>
    </p>
        </div>
    </div>
    <asp:GridView ID="gdvCreditAccount" runat="server" AutoGenerateColumns="False" 
        DataSourceID="sqldsCreditAccount" 
        EmptyDataText="You have no credit accounts with us." 
        HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="AccountType" HeaderText="Account Type" 
                SortExpression="AccountType" />
            <asp:BoundField DataField="AccountStartDate" HeaderText="Account Start Date" 
                SortExpression="AccountStartDate" ReadOnly="True" />
            <asp:BoundField DataField="CreditLimit" HeaderText="Credit Limit" 
                SortExpression="CreditLimit" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="sqldsCreditAccount" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        DeleteCommand="DELETE FROM Account WHERE (AccountID = @AccountID)" 
        InsertCommand="INSERT INTO Account(AccountType, CustomerID, AccountStartDate, CreditLimit) VALUES (@AccountType, @CustomerID, @AccountStartDate, @CreditLimit)" 
        SelectCommand="SELECT AccountType, AccountStartDate, CreditLimit FROM Account WHERE (CustomerID = @CustomerID)" 
        UpdateCommand="UPDATE Account SET AccountType = @AccountType, CreditLimit = @CreditLimit WHERE (CustomerID = @CustomerID)">
        <DeleteParameters>
            <asp:Parameter Name="AccountID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AccountType" />
            <asp:Parameter Name="CustomerID" />
            <asp:Parameter Name="AccountStartDate" />
            <asp:Parameter Name="CreditLimit" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="CustomerID" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="AccountType" />
            <asp:Parameter Name="CreditLimit" />
            <asp:Parameter Name="CustomerID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    	<div class="container">
    <div class="col-md-offset-2 col-md-8">
    </br>
    </br>
    </form>
    <p>
        <asp:Label ID="lblPaymentTypes" runat="server" text="Available Payment Methods"></asp:Label>
    </p>
    <img class="img-responsive pull-left" src="http://i76.imgup.net/accepted_c22e0.png">
    </div>
    </div>
</asp:Content>

