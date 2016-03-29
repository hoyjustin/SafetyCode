
Partial Class demoorderdetailed
    Inherits System.Web.UI.Page

    Protected Sub orderGridView_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles orderGridView.SelectedIndexChanged
        Dim row As String = orderGridView.SelectedRow.Cells(4).Text.Trim()
        Dim ecourse As String = "OnlineCourse"
        If row = ecourse Then
            Response.Redirect("~/customer/demotakeecourse.aspx")

        End If
    End Sub
End Class
