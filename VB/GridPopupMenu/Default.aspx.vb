Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Namespace GridPopupMenu
	Partial Public Class _Default
		Inherits System.Web.UI.Page

		Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
			ASPxGridView1.DataSource = GetDataTable()
			ASPxGridView1.KeyFieldName = "ID"
		End Sub

		Private Function GetDataTable() As DataTable
			Dim table As New DataTable()
			table.Columns.Add("ID", GetType(Integer))
			table.Columns.Add("Name", GetType(String))
			table.Columns.Add("Group", GetType(String))
			table.Rows.Add(1, "Ann", "Group 1")
			table.Rows.Add(2, "Bill", "Group 1")
			table.Rows.Add(3, "Dave", "Group 2")
			Return table
		End Function
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			ASPxGridView1.DataBind()
		End Sub

	End Class
End Namespace
