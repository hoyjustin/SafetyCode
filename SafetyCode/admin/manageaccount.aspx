<%@ Page Title="" Language="VB" MasterPageFile="StoreMaster3.master" AutoEventWireup="false" CodeFile="manageaccount.aspx.vb" Inherits="admin_manageaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="logincart" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form id="form1" runat="server">
        <fieldset>

          <!-- Form Name -->
          <legend>Manage Account</legend>
          <h1 class="panel-title display-td" >Account Settings</h1>
          &nbsp
          <!-- Text input-->
            <br />
            <asp:Label ID="Label1" runat="server" Text="103"></asp:Label>
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                AutoGenerateEditButton="True" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                        SortExpression="CompanyName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Province" HeaderText="Province" 
                        SortExpression="Province" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                        SortExpression="PhoneNumber" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
               

                
                SelectCommand="SELECT sellingCompany.CompanyName, sellingCompany.Address, sellingCompany.City, sellingCompany.Province, sellingCompany.PhoneNumber FROM sellingCompany INNER JOIN firmEmployee ON sellingCompany.CompanyID = firmEmployee.CompanyID WHERE (firmEmployee.EmployeeSalesRepID = @salesRepId)" 
                UpdateCommand="UPDATE sellingCompany SET Address = @Address, City = @City, Province = @Province, PhoneNumber = @PhoneNumber FROM sellingCompany INNER JOIN firmEmployee ON sellingCompany.CompanyID = firmEmployee.CompanyID WHERE (firmEmployee.EmployeeSalesRepID = @salesRepId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="salesRepId" 
                        PropertyName="Text" />
                </SelectParameters>

                <UpdateParameters>
                    <asp:Parameter Name="Address" />
                    <asp:Parameter Name="City" />
                    <asp:Parameter Name="Province" />
                    <asp:Parameter Name="PhoneNumber" />
                    <asp:Parameter Name="salesRepId" />
                </UpdateParameters>

            </asp:SqlDataSource>
            <br />
            <div class="panel-heading display-table" >
                    <div class="row display-tr" >

                        <h1 class="panel-title display-td" >Payment Settings</h1>

 
                &nbsp;</div>
                </div>

 
                <img class="img-responsive pull-left" src="http://i76.imgup.net/accepted_c22e0.png"><asp:DropDownList 
                ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource3" DataTextField="PaymentDescription" 
                DataValueField="PaymentDescription">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
                SelectCommand="SELECT [PaymentDescription] FROM [payment]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                        SortExpression="CompanyName" />
                    <asp:BoundField DataField="AccountBalance" HeaderText="AccountBalance" 
                        SortExpression="AccountBalance" />
                    <asp:BoundField DataField="ContractExpiry" HeaderText="ContractExpiry" 
                        SortExpression="ContractExpiry" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
                
                SelectCommand="SELECT sellingCompany.CompanyName, sellingCompany.AccountBalance, sellingCompany.ContractExpiry FROM sellingCompany INNER JOIN firmEmployee ON sellingCompany.CompanyID = firmEmployee.CompanyID WHERE (firmEmployee.EmployeeSalesRepID = @salesRepId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="salesRepId" 
                        PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
&nbsp;<h1 class="panel-title display-td" >&nbsp;</h1>
            <h1 class="panel-title display-td" >Employee Profiles</h1>

        &nbsp<asp:GridView ID="GridView1" 
                runat="server" AutoGenerateColumns="False" DataKeyNames="InstructorID" 
                DataSourceID="SqlDataSource1" AllowSorting="True" 
                AutoGenerateEditButton="True">
                <Columns>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" 
                        SortExpression="LastName" />
                    <asp:BoundField DataField="GivenNames" HeaderText="GivenNames" 
                        SortExpression="GivenNames" />
                    <asp:BoundField DataField="HireDate" HeaderText="HireDate" 
                        SortExpression="HireDate" />
                    <asp:BoundField DataField="InstructorID" HeaderText="InstructorID" 
                        SortExpression="InstructorID" ReadOnly="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:mis418group7ConnectionString %>" 
                
                
                SelectCommand="SELECT instructor.LastName, instructor.GivenNames, instructor.HireDate, instructor.InstructorID FROM instructor INNER JOIN firmEmployee ON instructor.EmployeeSalesRepID = firmEmployee.EmployeeSalesRepID WHERE (firmEmployee.EmployeeSalesRepID = @salesRepId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="salesRepId" 
                        PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
&nbsp;<div class="form-group">
                <asp:Panel ID="Panel1" runat="server">
                    <h1 class="panel-title display-td">
                        &nbsp;</h1>
                <br />
                    <br />
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="pull-right">
                            <a class="btn btn-default" href="dashboard.aspx" role="button">Cancel</a>
                            <a class="btn btn-primary" href="dashboard.aspx" role="button">Save</a>
                        </div>
                    </div>
                    &nbsp;</asp:Panel>
          </div>

        </fieldset>
        </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
</asp:Content>

