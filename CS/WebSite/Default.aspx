<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxDocking" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> How to get coordinates of ASPxDockPanel</title>
</head>
<body>
    <script type="text/javascript">
        function onClick(s, e) {
            var panel = dockManager.GetPanelByUID('panel1');
            var x = getCoords(panel.GetMainElement()).x;
            var y = getCoords(panel.GetMainElement()).y;
            label1.SetText('X: ' + x + ', Y: ' + y);
        }
        function getCoords(elem) {
            var left = elem.offsetLeft;
            var top = elem.offsetTop;
            while (elem.offsetParent) {
                elem = elem.offsetParent;
                left += elem.offsetLeft;
                top += elem.offsetTop;
            }
            return { x: left, y: top };
        }
    </script>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxDockManager ID="dockManager" runat="server" ClientInstanceName="dockManager">
            </dx:ASPxDockManager>
            <dx:ASPxDockZone ID="zone1" runat="server" Height="181px" Width="247px" ZoneUID="zone1"></dx:ASPxDockZone>
            <dx:ASPxDockPanel ID="panel1" runat="server" Height="70px" Width="187px" PanelUID="panel1">
                <ContentCollection>
                    <dx:PopupControlContentControl>
                        <dx:ASPxLabel runat="server" ID="label1" ClientInstanceName="label1"></dx:ASPxLabel>
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxDockPanel>
        </div>
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Get X,Y" AutoPostBack="false">
            <ClientSideEvents Click="onClick" />
        </dx:ASPxButton>
    </form>
</body>
</html>

