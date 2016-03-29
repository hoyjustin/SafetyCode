Imports System.Data
Partial Class products
    Inherits System.Web.UI.Page

    Protected Sub cartBtn_Click(sender As Object, e As System.EventArgs) Handles cartBtn.Click
        If Productsgdv.SelectedIndex = -1 Then
            lblWarning.Text = "Please select a product"
            Exit Sub
        End If
        Dim ProductID As Integer, customerID As String, dv As DataView

        customerID = "771" 'for testing at this moment; will be changed

        ProductID = CType(Productsgdv.SelectedRow.Cells(1).Text, Integer)
        Productsgdv.SelectedIndex = -1 'deselect

        dv = CType(TopOrderSQLDS.Select(DataSourceSelectArguments.Empty), DataView)

        Dim orderID As Integer
        If (Not Convert.IsDBNull(dv.Table.Rows(0)(6))) Then 'Check if theres an existing order, if not then create a new order and primary key
            If dv.Count > 0 Then
                orderID = CType(dv.Table.Rows(0)(0), Integer) + 1
            Else 'ordered; update quantity
                orderID = CType(1, Integer)
            End If

            TopOrderSQLDS.InsertParameters("orderDate").DefaultValue = Date.Now
            TopOrderSQLDS.InsertParameters("custID").DefaultValue = customerID
            TopOrderSQLDS.InsertParameters("orderID").DefaultValue = orderID
            TopOrderSQLDS.Insert()
        End If

        'retrieve orderID
        orderCusSQLDS.SelectParameters("custID").DefaultValue = customerID
        dv = CType(orderCusSQLDS.Select(DataSourceSelectArguments.Empty), DataView)


        Dim newQty As Integer
        newQty = CType(txtQty.Text, Integer)
        'retrieve orderID

        orderID = CType(dv.Table.Rows(0)(0), Integer)

        'get an orderline
        OrderItemSQLDS.SelectParameters("OrderID").DefaultValue = orderID
        OrderItemSQLDS.SelectParameters("ProductID").DefaultValue = ProductID
        dv = CType(OrderItemSQLDS.Select(DataSourceSelectArguments.Empty), DataView)
        If dv.Count = 0 Then 'Product not ordered
            OrderItemSQLDS.InsertParameters("OrderID").DefaultValue = orderID
            OrderItemSQLDS.InsertParameters("ProductID").DefaultValue = ProductID
            OrderItemSQLDS.InsertParameters("Quantity").DefaultValue = newQty
            OrderItemSQLDS.Insert()
        Else 'ordered; update quantity
            Dim totalQty As Integer, OrderItemID As Integer
            OrderItemID = CType(dv.Table.Rows(0)(0), Integer)
            totalQty = CType(dv.Table.Rows(0)(1), Integer) + newQty
            OrderItemSQLDS.UpdateParameters("Quantity").DefaultValue = totalQty
            OrderItemSQLDS.UpdateParameters("OrderItemID").DefaultValue = OrderItemID
            OrderItemSQLDS.Update()
        End If
        'End of the code
        Session("PendingOrderID") = orderID
        Response.Redirect("shoppingcart.aspx")
    End Sub

    Protected Sub Productsgdv_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles Productsgdv.SelectedIndexChanged
        lblWarning.Text = ""
    End Sub
End Class