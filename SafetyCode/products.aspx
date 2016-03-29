<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster2.master" AutoEventWireup="false" CodeFile="products.aspx.vb" Inherits="products" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

   <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="desktop.aspx" style="color: #e41622;">Home</a></li>
                    <li><a href="producttype.aspx" style="color: #e41622;">Product Types</a></li>
					<li class="active" style="color: #e41622;">Products</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
    <asp:SqlDataSource ID="customerSQLDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        SelectCommand="SELECT OrderID, CustomerID FROM [order] WHERE (CustomerID = @custID)">
        <SelectParameters>
            <asp:Parameter Name="custID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="TopOrderSQLDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        InsertCommand="INSERT INTO [order] (OrderID, CustomerID, PaymentTypeCode, AccountID, OrderDate, ShippedDate, ShipVia, Freight, RequiredDate) VALUES (@OrderID, @custID, @PaymentTypeCode, @AccountID, @OrderDate, @ShippedDate, @ShipVia, @Freight, @RequiredDate)" 
        
        
        SelectCommand="SELECT top 1 * FROM &quot;order&quot; ORDER BY OrderID DESC">
        <InsertParameters>
            <asp:Parameter Name="OrderID" />
            <asp:Parameter Name="custID" />
            <asp:Parameter Name="PaymentTypeCode" />
            <asp:Parameter Name="AccountID" />
            <asp:Parameter Name="OrderDate" />
            <asp:Parameter Name="ShippedDate" />
            <asp:Parameter Name="ShipVia" />
            <asp:Parameter Name="Freight" />
            <asp:Parameter Name="RequiredDate" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="OrderItemSQLDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        InsertCommand="INSERT INTO orderItem(OrderID, ProductID, Quantity) VALUES (@OrderID, @ProductID, @Quantity)" 
        SelectCommand="SELECT OrderItemID, Quantity FROM orderItem WHERE (OrderID = @OrderID) AND (ProductID = @ProductID)" 
        
        UpdateCommand="UPDATE orderItem SET Quantity = @Quantity WHERE (OrderItemID = @OrderItemID)">
        <InsertParameters>
            <asp:Parameter Name="OrderID" />
            <asp:Parameter Name="ProductID" />
            <asp:Parameter Name="Quantity" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="OrderID" />
            <asp:Parameter Name="ProductID" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Quantity" />
            <asp:Parameter Name="OrderItemID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="orderCusSQLDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        InsertCommand="INSERT INTO [order] (CustomerID, PaymentTypeCode, AccountID, OrderDate, ShippedDate, ShipVia, Freight, RequiredDate) VALUES (@custID, @PaymentTypeCode, @AccountID, @OrderDate, @ShippedDate, @ShipVia, @Freight, @RequiredDate)" 
        
        
        SelectCommand="SELECT TOP 1 OrderID, CustomerID FROM [order] WHERE (CustomerID = @custID) ORDER BY OrderID DESC;">
        <InsertParameters>
            <asp:Parameter Name="custID" />
            <asp:Parameter Name="PaymentTypeCode" />
            <asp:Parameter Name="AccountID" />
            <asp:Parameter Name="OrderDate" />
            <asp:Parameter Name="ShippedDate" />
            <asp:Parameter Name="ShipVia" />
            <asp:Parameter Name="Freight" />
            <asp:Parameter Name="RequiredDate" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="custID" />
        </SelectParameters>
    </asp:SqlDataSource>
    </br></br>
    <div class="container"> 
	<div class="col-md-offset-2 col-md-8">
        <form id="form1" runat="server">
        Choose your Topic:<br />
        <br />
        <asp:DropDownList ID="Topicddl" runat="server" AutoPostBack="True" 
            DataSourceID="TopicsSQLDS" DataTextField="TopicName" DataValueField="TopicCode">
        </asp:DropDownList>
        <br />
        <br />
        <asp:SqlDataSource ID="TopicsSQLDS" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
            SelectCommand="SELECT TopicCode, TopicName FROM topic"></asp:SqlDataSource>
        Available Products in Your Chosen Topic:<br />
    </div>
    </div>

    <asp:GridView ID="Productsgdv" runat="server" AutoGenerateColumns="False" 
        DataSourceID="ProductsSQLDS" AllowSorting="True" HorizontalAlign="Center" 
        DataKeyNames="ProductID">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
            <asp:BoundField DataField="Style" HeaderText="Style" 
                SortExpression="Style" />
            <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
                SortExpression="QuantityPerUnit" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                SortExpression="UnitPrice" />
            <asp:BoundField DataField="Discontinued" HeaderText="Discontinued" 
                SortExpression="Discontinued" />
            <asp:BoundField DataField="ProductTypeCode" HeaderText="ProductTypeCode" 
                SortExpression="ProductTypeCode" />
        </Columns>
        <SelectedRowStyle BackColor="#FF3300" />
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="ProductsSQLDS" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        SelectCommand="SELECT ProductName, Style, QuantityPerUnit, UnitPrice, Discontinued, ProductTypeCode, ProductID FROM product WHERE (TopicCode = @TopicCode) AND (ProductTypeCode = N'Product')">
        <SelectParameters>
            <asp:ControlParameter ControlID="Topicddl" Name="TopicCode" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
        <div class="container"> 
	<div class="col-md-offset-2 col-md-8">
        <asp:Button ID="cartBtn" runat="server" Text="Add to Cart" />
&nbsp;&nbsp;&nbsp;&nbsp; Quantity:&nbsp;
    <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblWarning" runat="server" ForeColor="#FF3300"></asp:Label>
    &nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="txtQty" ErrorMessage="RangeValidator" ForeColor="Red" 
            MaximumValue="20" MinimumValue="1" Type="Integer"></asp:RangeValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtQty" 
            ErrorMessage="Please Enter an Integer between 1 and 20" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    </div>
    </div>
    </form>
</asp:Content>

