<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128554385/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4562)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# Dock Panel for ASP.NET Web Forms - How to get coordinates of a panel
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4562/)**
<!-- run online end -->

This example shows how to get [ASPxDockPanel](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxDockPanel) coordinates on the client side. Calculation of the coordinates is executed in the client-side [Click](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxButton.Click) event of [ASPxButton](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxButton).

```js
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
```

## Files to Review

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
