
Partial Class customers
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        sqldsCustomers.SelectParameters("EmployeeSalesRepID").DefaultValue = 103
    End Sub
End Class
