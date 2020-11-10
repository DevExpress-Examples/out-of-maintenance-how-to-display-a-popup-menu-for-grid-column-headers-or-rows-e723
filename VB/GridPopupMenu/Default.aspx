<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridPopupMenu._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dxm" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <script type="text/javascript">
    function grid_ContextMenu(s, e) {
		if(e.objectType == "header")
			pmColumnMenu.ShowAtPos(ASPxClientUtils.GetEventX(e.htmlEvent), ASPxClientUtils.GetEventY(e.htmlEvent));        
		if(e.objectType == "row")
			pmRowMenu.ShowAtPos(ASPxClientUtils.GetEventX(e.htmlEvent), ASPxClientUtils.GetEventY(e.htmlEvent));        
    }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid">
            <Columns>
                <dxwgv:GridViewDataTextColumn FieldName="Name" Name="colName" VisibleIndex="0">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Group" Name="colGroup" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <ClientSideEvents ContextMenu="grid_ContextMenu" />
            <SettingsCustomizationWindow Enabled="True" />            
        </dxwgv:ASPxGridView>
        <dxm:ASPxPopupMenu ID="pmColumnMenu" runat="server" ClientInstanceName="pmColumnMenu">
            <Items>
                <dxm:MenuItem Name="cmdShowCustomization" Text="Column Chooser...">
                </dxm:MenuItem>
            </Items>
            <ClientSideEvents ItemClick="function(s, e) {
	if(e.item.name == 'cmdShowCustomization')
        grid.ShowCustomizationWindow();
}" />
        </dxm:ASPxPopupMenu>
        <dxm:ASPxPopupMenu ID="pmRowMenu" runat="server" ClientInstanceName="pmRowMenu">
            <Items>
                <dxm:MenuItem Text="Export to PDF" Name="cmdExport">
                </dxm:MenuItem>
            </Items>
                        <ClientSideEvents ItemClick="function(s, e) {
	if(e.item.name == 'cmdExport')
        alert('Export simulation.');
}" />

        </dxm:ASPxPopupMenu>
    </div>
    </form>
</body>
</html>
