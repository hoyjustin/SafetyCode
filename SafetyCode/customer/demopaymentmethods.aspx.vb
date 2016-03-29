
Partial Class demopaymentmethods
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        sqldsCreditAccount.SelectParameters("CustomerID").DefaultValue = 771
    End Sub
End Class
