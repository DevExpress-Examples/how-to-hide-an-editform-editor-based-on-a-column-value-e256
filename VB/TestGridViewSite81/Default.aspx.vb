Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors


Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub ASPxGridView1_BeforeGetCallbackResult(ByVal sender As Object, ByVal e As EventArgs)
		Dim gridView As ASPxGridView = CType(sender, ASPxGridView)
		If gridView.IsEditing AndAlso (Not gridView.IsNewRowEditing) Then
			Dim keyValue As Integer = CInt(Fix(gridView.GetRowValues(gridView.EditingRowVisibleIndex, New String() {gridView.KeyFieldName})))
			Dim column As GridViewDataColumn = CType(gridView.Columns("CategoryName"), GridViewDataColumn)
			If keyValue Mod 2 = 0 Then
				column.EditFormSettings.Visible = DevExpress.Web.ASPxClasses.DefaultBoolean.True
			Else
				column.EditFormSettings.Visible = DevExpress.Web.ASPxClasses.DefaultBoolean.False
			End If
		End If
	End Sub
End Class


