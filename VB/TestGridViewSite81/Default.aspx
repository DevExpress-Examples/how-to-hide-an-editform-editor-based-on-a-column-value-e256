<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default"  MasterPageFile="~/MasterPage.master"%>

<%@ Register Assembly="DevExpress.Web.v8.1, Version=8.1.7.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
	Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dxcp" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v8.1, Version=8.1.7.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
	Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dxwtl" %>
<%@ Register Assembly="DevExpress.Web.v8.1, Version=8.1.7.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
	Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1, Version=8.1.7.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1, Version=8.1.7.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v8.1, Version=8.1.7.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
	Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dxtc" %>
<%@ Register Assembly="DevExpress.Web.v8.1, Version=8.1.7.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
	Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dxw" %>

<%@ Register Assembly="DevExpress.Web.v8.1, Version=8.1.7.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
	Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dxpc" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="CC" runat="Server">
	&nbsp;<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
		DataSourceID="AccessDataSource1" KeyFieldName="CategoryID" Width="832px" OnBeforeGetCallbackResult="ASPxGridView1_BeforeGetCallbackResult">
		<Columns>
			<dxwgv:GridViewCommandColumn VisibleIndex="0">
				<EditButton Visible="True">
				</EditButton>
				<NewButton Visible="True">
				</NewButton>
			</dxwgv:GridViewCommandColumn>
			<dxwgv:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
				<EditFormSettings Visible="False" />
			</dxwgv:GridViewDataTextColumn>
			<dxwgv:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
			</dxwgv:GridViewDataTextColumn>
			<dxwgv:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
			</dxwgv:GridViewDataTextColumn>
		</Columns>

	</dxwgv:ASPxGridView>
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
		SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
	<br />


</asp:Content>