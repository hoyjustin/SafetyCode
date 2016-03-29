<%@ Page Title="" Language="VB" MasterPageFile="StoreMaster4.master" AutoEventWireup="false" CodeFile="demoorderdetailed.aspx.vb" Inherits="demoorderdetailed" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="loggedindesktop.aspx" style="color: #e41622;">Home</a></li>
					<li><a href="demoorders.aspx" style="color: #e41622;">Your Orders</a></li>
                    <li class="active" style="color: #e41622;">Detailed Order</li>
				</ol>
           </div>
        </div>
    </div>
    <!--end-breadcrumbs-->

			    <p>
                    &nbsp;</p>
                <p>


                <form id="form1" runat="server">
                <br />

                <div style="margin-left: auto; margin-right: auto; text-align: center;" 
                    dir="ltr">
                <asp:Label ID="Label1" runat="server" Text="Showing Items For Order ID: " 
                        Font-Size="15pt" ></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="10252" Font-Size="15pt" 
                        Font-Bold="True" ></asp:Label>
                </div>

                <br />
                <br />
                <asp:GridView ID="orderGridView" runat="server" AutoGenerateColumns="False" DataSourceID="OrderDataSource" 
                    HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" 
                    Font-Size="15pt" PageSize="20">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                            SortExpression="ProductName" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                            SortExpression="Quantity" />
                        <asp:BoundField DataField="Discount" HeaderText="Discount" 
                            SortExpression="Discount" />
                        <asp:BoundField DataField="ProductTypeCode" HeaderText="ProductTypeCode" 
                            SortExpression="ProductTypeCode" />
                        <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                            SortExpression="UnitPrice" />
                        <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" 
                            SortExpression="ShortDescription" />
                    </Columns>
                    <PagerStyle Font-Bold="False" Font-Size="Smaller" />
                </asp:GridView>

                <asp:SqlDataSource ID="OrderDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
                    SelectCommand="SELECT product.ProductName, orderItem.Quantity, orderItem.Discount, product.ProductTypeCode, product.UnitPrice, product.ShortDescription FROM orderItem INNER JOIN product ON orderItem.ProductID = product.ProductID WHERE (orderItem.OrderID = @OrderLine)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label2" Name="OrderLine" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                </form>



                    &nbsp;</p>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->



</asp:Content>

