Imports System.Data
Partial Class shoppingcart
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        CartSQLDS.SelectParameters("orderID").DefaultValue = CType(Session.Item("PendingOrderID"), Integer)
    End Sub

    Protected Sub gdvCart_DataBound(sender As Object, e As System.EventArgs) Handles cartGDV.DataBound
        Dim dv As DataView, Qty As Integer, price As Decimal
        Dim rowI As Integer, total As Decimal = 0, orderTotal As Single = 0
        dv = CType(CartSQLDS.Select(DataSourceSelectArguments.Empty), DataView)
        For rowI = 0 To dv.Count - 1
            price = CType(dv.Table.Rows(rowI)(2), Decimal)
            Qty = CType(dv.Table.Rows(rowI)(3), Integer)
            total = total + price * Qty
        Next
        lblTotal.Text = Format(total, "Currency")
    End Sub

End Class
