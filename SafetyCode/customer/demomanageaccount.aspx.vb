
Partial Class demomanageaccount
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        sqldsCustomerName.SelectParameters("CustomerID").DefaultValue = 771
        sqldsCustomerContact.SelectParameters("CustomerID").DefaultValue = 771
    End Sub

    Protected Sub btnEditAccount_Click(sender As Object, e As System.EventArgs) Handles btnEditAccount.Click
        Response.Redirect("demoaccountsettings.aspx")
    End Sub

    Protected Sub btnEditPayment_Click(sender As Object, e As System.EventArgs) Handles btnEditPayment.Click
        Response.Redirect("demopaymentmethods.aspx")
    End Sub
End Class
