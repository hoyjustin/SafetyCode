
Partial Class producttype
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button3.Click
        Response.Redirect("~/products.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As System.EventArgs) Handles Button4.Click
        Response.Redirect("~/demoecourses.aspx")
    End Sub
End Class
