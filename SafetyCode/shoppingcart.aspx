<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster2.master" AutoEventWireup="false" CodeFile="shoppingcart.aspx.vb" Inherits="shoppingcart" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <form id="form1" runat="server">

    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="desktop.aspx" style="color: #e41622;">Home</a></li>
					<li class="active" style="color: #e41622;">Shopping Cart</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
    </br>
    
    <div class="container">
        <asp:GridView ID="cartGDV" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="OrderItemID" DataSourceID="CartSQLDS" 
            EmptyDataText="&quot;There is nothing in your cart.&quot;" 
            HorizontalAlign="Center">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="OrderItemID" HeaderText="OrderItemID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="OrderItemID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="CartSQLDS" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        
            SelectCommand="SELECT orderItem.OrderItemID, product.ProductName, orderItem.Quantity, product.UnitPrice FROM product INNER JOIN orderItem ON product.ProductID = orderItem.ProductID WHERE (orderItem.OrderID = @OrderID)" 
            DeleteCommand="DELETE FROM orderItem WHERE (OrderItemID = @OrderItemID)" 
            UpdateCommand="UPDATE orderItem SET Quantity = @Quantity WHERE (OrderItemID = @OrderItemID)">
            <DeleteParameters>
                <asp:Parameter Name="OrderItemID" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="OrderID" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Quantity" />
                <asp:Parameter Name="OrderItemID" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </br>
    </div>
    <br />
    <br />

        <div class="container"> 
	<div class="col-md-offset-2 col-md-8">
        <asp:GridView ID="gdvOrderLine" runat="server">
        </asp:GridView>
        <br />
            <br />
    Grand Total:
    <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
    <br />
        </div>
    </div>
    </form>
</asp:Content>