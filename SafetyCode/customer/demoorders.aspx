<%@ Page Title="" Language="VB" MasterPageFile="StoreMaster4.master" AutoEventWireup="false" CodeFile="demoorders.aspx.vb" Inherits="demoorders" EnableEventValidation = "false"%>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="loggedindesktop.aspx" style="color: #e41622;">Home</a></li>
					<li class="active" style="color: #e41622;">Your Orders</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->

    <form id="form1" runat="server">
    <br />

    <div style="margin-left: auto; margin-right: auto; text-align: center;" 
        dir="ltr">
    <asp:Label ID="Label1" runat="server" Text="Showing Orders For Customer ID: " 
            Font-Size="15pt" ></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="771" Font-Size="15pt" Font-Bold="True" ></asp:Label>
    </div>

    <br />
    <br />
    <asp:GridView ID="orderGridView" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="OrderID" DataSourceID="ordersSource" 
        HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" 
        Font-Size="15pt" PageSize="20">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" 
                SortExpression="OrderID" />
            <asp:BoundField DataField="PaymentTypeCode" HeaderText="PaymentTypeCode" 
                SortExpression="PaymentTypeCode" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                SortExpression="OrderDate" />
            <asp:BoundField DataField="RequiredDate" HeaderText="RequiredDate" 
                SortExpression="RequiredDate" />
            <asp:BoundField DataField="ShippedDate" HeaderText="ShippedDate" 
                SortExpression="ShippedDate" />
            <asp:BoundField DataField="ShipVia" HeaderText="ShipVia" 
                SortExpression="ShipVia" />
            <asp:BoundField DataField="Freight" HeaderText="Freight" 
                SortExpression="Freight" />
        </Columns>
        <PagerStyle Font-Bold="False" Font-Size="Smaller" />
    </asp:GridView>

    <asp:SqlDataSource ID="ordersSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        
        
        SelectCommand="SELECT OrderID, PaymentTypeCode, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight FROM [order] WHERE (CustomerID = @CustomerID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label2" Name="CustomerID" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    </form>
</asp:Content>

