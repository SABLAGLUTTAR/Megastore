<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.ascx.cs" Inherits="Megastore.LoginUser" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
</asp:ScriptManagerProxy>
<asp:Button ID="Login" runat="server" Text = "Login"></asp:Button>
<asp:Button ID="Register" runat="server" Text = "Register" OnClick="Register_Click"></asp:Button>
<asp:Panel ID="pnlLogin" runat="server" CssClass="modalPopup"  style = "display:none">
<table border="1">
<tr>
<td>
<asp:LinkButton ID="lnkCancel" runat="server" Text = "[X]" ></asp:LinkButton>
</td>
</tr>
<tr>
<td>
<asp:Login ID = "Login1" runat = "server" OnAuthenticate = "OnAuthenticate">
</asp:Login>
</td>
</tr>
</table>
</asp:Panel>
<cc1:ModalPopupExtender ID="popup" runat="server" DropShadow="false"
TargetControlID="Login" PopupControlID="pnlLogin"
BackgroundCssClass="modalBackground" CancelControlID="lnkCancel">
</cc1:ModalPopupExtender>