<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.ascx.cs" Inherits="Megastore.LoginUser" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
</asp:ScriptManagerProxy>

<asp:LinkButton ID="Login" runat="server" Text="Login"></asp:LinkButton>
<asp:LinkButton ID="Register"
    Text="Register"
    OnCommand="Register_Click"
    runat="server" />
<asp:Panel ID="pnlLogin" runat="server" CssClass="modalPopup" Style="display: none">
    <table border="0">
        <tr>
            <td>
                <asp:HyperLink ID="lnkCancel" runat="server">
                    <asp:Image ID="img" runat="server" ImageUrl="images/cancel.png" />
                </asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Login ID="Login1" runat="server" OnAuthenticate="OnAuthenticate">
                </asp:Login>
            </td>
        </tr>
    </table>
</asp:Panel>
<cc1:ModalPopupExtender ID="popup" runat="server" DropShadow="false"
    TargetControlID="Login" PopupControlID="pnlLogin"
    BackgroundCssClass="modalBackground" CancelControlID="lnkCancel">
</cc1:ModalPopupExtender>
