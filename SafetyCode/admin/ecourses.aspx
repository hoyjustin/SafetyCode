<%@ page title="" language="VB" masterpagefile="StoreMaster3.master" autoeventwireup="false" codefile="ecourses.aspx.vb" inherits="ecourses" %>

<asp:content runat="server" id="ecourseslogin" contentplaceholderid="logincart">
    <div class="cart box_1">

</asp:content>

<asp:content id="ecoursesmain" contentplaceholderid="main" runat="Server">

    <html>
    <head>
        <title>E-Courses</title>
    </head>

    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="dashboard.aspx">Dashboard</a></li>
					<li class="active">Manage E-Courses</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->

    <br />
    <form id="form1" runat="server">
            <div style="margin-left: auto; margin-right: auto; text-align: center;" 
        dir="ltr">
    <asp:Label ID="Label1" runat="server" Text="Your Offered E-Courses: " 
            Font-Size="15pt" ></asp:Label>
    </div>
    </br></br>

        <asp:gridview ID="gdvCustomers" runat="server" AutoGenerateColumns="False" 
                DataSourceID="sqldsCustomers" AllowPaging="True" AllowSorting="True" 
              DataKeyNames="ProductID" HorizontalAlign="Center">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                    SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="TopicCode" HeaderText="TopicCode" 
                    SortExpression="TopicCode" />
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
                    SortExpression="QuantityPerUnit" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
                <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
                    SortExpression="UnitsInStock" />
                <asp:BoundField DataField="Discontinued" HeaderText="Discontinued" 
                    SortExpression="Discontinued" />
                <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" 
                    SortExpression="ShortDescription" />
                <asp:BoundField DataField="MarketingDescription" 
                    HeaderText="MarketingDescription" SortExpression="MarketingDescription" />
                <asp:BoundField DataField="NoOfDays" HeaderText="NoOfDays" 
                    SortExpression="NoOfDays" />
                <asp:BoundField DataField="MaxDiscount" HeaderText="MaxDiscount" 
                    SortExpression="MaxDiscount" />
            </Columns>


            </asp:gridview>

    <asp:SqlDataSource ID="sqldsCustomers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
        
        
        
        
                SelectCommand="SELECT [ProductID], [ProductName], [TopicCode], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [Discontinued], [ShortDescription], [MarketingDescription], [NoOfDays], [MaxDiscount] FROM [product] WHERE (([CompanyID] = @CompanyID) AND ([ProductTypeCode] = @ProductTypeCode))" 
                InsertCommand="INSERT INTO [product] ([ProductID], [ProductName], [TopicCode], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [Discontinued], [ShortDescription], [MarketingDescription], [NoOfDays], [MaxDiscount]) VALUES (@ProductID, @ProductName, @TopicCode, @QuantityPerUnit, @UnitPrice, @UnitsInStock, @Discontinued, @ShortDescription, @MarketingDescription, @NoOfDays, @MaxDiscount)" 
                
                
                UpdateCommand="UPDATE [product] SET [ProductName] = @ProductName, [TopicCode] = @TopicCode, [QuantityPerUnit] = @QuantityPerUnit, [UnitPrice] = @UnitPrice, [UnitsInStock] = @UnitsInStock, [Discontinued] = @Discontinued, [ShortDescription] = @ShortDescription, [MarketingDescription] = @MarketingDescription, [NoOfDays] = @NoOfDays, [MaxDiscount] = @MaxDiscount WHERE [ProductID] = @ProductID" 
                DeleteCommand="DELETE FROM [product] WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="TopicCode" Type="String" />
            <asp:Parameter Name="QuantityPerUnit" Type="Int32" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="UnitsInStock" Type="Int32" />
            <asp:Parameter Name="Discontinued" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="MarketingDescription" Type="String" />
            <asp:Parameter Name="NoOfDays" Type="Int32" />
            <asp:Parameter Name="MaxDiscount" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="2222" Name="CompanyID" Type="Int32" />
            <asp:Parameter DefaultValue="OnlineCourse" Name="ProductTypeCode" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="TopicCode" Type="String" />
            <asp:Parameter Name="QuantityPerUnit" Type="Int32" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="UnitsInStock" Type="Int32" />
            <asp:Parameter Name="Discontinued" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="MarketingDescription" Type="String" />
            <asp:Parameter Name="NoOfDays" Type="Int32" />
            <asp:Parameter Name="MaxDiscount" Type="Decimal" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
            <br />
    </form>
                <p>
                    &nbsp;</p>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->

	<!--start-ecourses--> 
	<!--end-ecourses-->

</asp:content>

