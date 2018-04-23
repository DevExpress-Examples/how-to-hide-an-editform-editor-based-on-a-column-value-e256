using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxEditors;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) {
    }
    protected void ASPxGridView1_BeforeGetCallbackResult(object sender, EventArgs e) {
        ASPxGridView gridView = (ASPxGridView)sender;
        if(gridView.IsEditing && !gridView.IsNewRowEditing) { 
            int keyValue = (int)gridView.GetRowValues(gridView.EditingRowVisibleIndex, new string[] {gridView.KeyFieldName});
            GridViewDataColumn column = (GridViewDataColumn)gridView.Columns["CategoryName"];
            if(keyValue % 2 == 0)
                column.EditFormSettings.Visible = DevExpress.Web.ASPxClasses.DefaultBoolean.True;
            else
                column.EditFormSettings.Visible = DevExpress.Web.ASPxClasses.DefaultBoolean.False;
        }
    }
}


