<%@ Page Title="" Language="VB" MasterPageFile="StoreMaster3.master" AutoEventWireup="false" CodeFile="ManageProducts.aspx.vb" Inherits="manageaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="logincart" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="dashboard.aspx">Dashboard</a></li>
					<li class="active">Manage Products</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->

    <form id="form1" runat="server">
        <br />
            <div style="margin-left: auto; margin-right: auto; text-align: center;" 
        dir="ltr">
    <asp:Label ID="Label1" runat="server" Text="Your Offered Products: " 
            Font-Size="15pt" ></asp:Label>
    </div>

    <br />

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" 
        EmptyDataText="There are no data records to display." AllowSorting="True" 
        AllowPaging="True" HorizontalAlign="Center" DataKeyNames="ProductID">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                SortExpression="ProductID" ReadOnly="True" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
            <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
                SortExpression="QuantityPerUnit" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                SortExpression="UnitPrice" />
            <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
                SortExpression="UnitsInStock" />
            <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" 
                SortExpression="ReorderLevel" />
            <asp:BoundField DataField="Discontinued" HeaderText="Discontinued" 
                SortExpression="Discontinued" />
            <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" 
                SortExpression="ShortDescription" />
            <asp:BoundField DataField="MarketingDescription" 
                HeaderText="MarketingDescription" SortExpression="MarketingDescription" />
            <asp:BoundField DataField="MaxDiscount" HeaderText="MaxDiscount" 
                SortExpression="MaxDiscount" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        SelectCommand="SELECT [ProductID], [ProductName], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [ShortDescription], [MarketingDescription], [MaxDiscount] FROM [product] WHERE (([CompanyID] = @CompanyID) AND ([ProductTypeCode] = @ProductTypeCode))" 
        
        
            
            
            
            
            UpdateCommand="UPDATE [product] SET [ProductName] = @ProductName, [QuantityPerUnit] = @QuantityPerUnit, [UnitPrice] = @UnitPrice, [UnitsInStock] = @UnitsInStock, [ReorderLevel] = @ReorderLevel, [Discontinued] = @Discontinued, [ShortDescription] = @ShortDescription, [MarketingDescription] = @MarketingDescription, [MaxDiscount] = @MaxDiscount WHERE [ProductID] = @ProductID" 
            DeleteCommand="DELETE FROM [product] WHERE [ProductID] = @ProductID" 
            InsertCommand="INSERT INTO [product] ([ProductID], [ProductName], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [ShortDescription], [MarketingDescription], [MaxDiscount]) VALUES (@ProductID, @ProductName, @QuantityPerUnit, @UnitPrice, @UnitsInStock, @ReorderLevel, @Discontinued, @ShortDescription, @MarketingDescription, @MaxDiscount)">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="QuantityPerUnit" Type="Int32" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="UnitsInStock" Type="Int32" />
            <asp:Parameter Name="ReorderLevel" Type="Int32" />
            <asp:Parameter Name="Discontinued" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="MarketingDescription" Type="String" />
            <asp:Parameter Name="MaxDiscount" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="2222" Name="CompanyID" Type="Int32" />
            <asp:Parameter DefaultValue="Product" Name="ProductTypeCode" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="QuantityPerUnit" Type="Int32" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="UnitsInStock" Type="Int32" />
            <asp:Parameter Name="ReorderLevel" Type="Int32" />
            <asp:Parameter Name="Discontinued" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="MarketingDescription" Type="String" />
            <asp:Parameter Name="MaxDiscount" Type="Decimal" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </form>
    </asp:Content>