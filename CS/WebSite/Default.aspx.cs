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
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
    protected void grid_CellEditorInitialize(object sender, ASPxGridViewEditorEventArgs e) {
        ASPxGridView gridView = (ASPxGridView)sender;

        if (!gridView.IsNewRowEditing) {
            Int32 keyValue = (Int32)gridView.GetRowValues(gridView.EditingRowVisibleIndex, new String[] { gridView.KeyFieldName });

            if (e.Column.FieldName == "CategoryName")
                e.Editor.Visible = (keyValue % 2 == 0);
        }
    }
}


