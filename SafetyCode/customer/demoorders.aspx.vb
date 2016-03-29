Imports System.Data

Partial Class demoorders
    Inherits System.Web.UI.Page

    Protected Sub orderGridView_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles orderGridView.SelectedIndexChanged
        Dim row As String = orderGridView.SelectedRow.Cells(0).Text
        Response.Redirect("~/customer/demoorderdetailed.aspx")
    End Sub
End Class
