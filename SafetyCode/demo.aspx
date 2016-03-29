<%@ Page Title="" Language="VB" MasterPageFile="~/StoreMaster.master" AutoEventWireup="false" CodeFile="demo.aspx.vb" Inherits="demo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
        <form id="form1" runat="server">
            <div align="center">
		        <div class="address new">
			        &nbsp;<asp:Button ID="Button1" runat="server" Text="Desktop" Width="493px" 
                        Font-Bold="True" Font-Size="20pt" Height="65px" />
                    &nbsp;<asp:Button ID="Button2" runat="server" Text="Mobile" Width="493px" 
                        Font-Bold="True" Font-Size="20pt" Height="65px" />
		        </div>
            </div>
        </form>
</asp:Content>

