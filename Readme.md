<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/TestGridViewSite81/Default.aspx) (VB: [Default.aspx](./VB/TestGridViewSite81/Default.aspx))
* [Default.aspx.cs](./CS/TestGridViewSite81/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/TestGridViewSite81/Default.aspx.vb))
* [MasterPage.master.cs](./CS/TestGridViewSite81/MasterPage.master.cs) (VB: [MasterPage.master.vb](./VB/TestGridViewSite81/MasterPage.master.vb))
<!-- default file list end -->
# How to hide an EditForm editor based on a column value
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e256/)**
<!-- run online end -->


<p>It is safe to hide an editor using the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_CellEditorInitializetopic"><u>ASPxGridView.CellEditorInitialize</u></a> event. By using this event handler, it is possible to operate with editors using the <strong>e.Editor</strong> property.</p><p><a href="https://www.devexpress.com/Support/Center/p/E4999">ASPxGridView - How to hide the EditForm editor and column caption programmatically</a></p>


<h3>Description</h3>

<p>To do this, use the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_BeforeGetCallbackResulttopic">BeforeGetCallBackResult</a> event. Check the column&#39;s value and then set the column&#39;s <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridColumnEditFormSettings_Visibletopic"> EditFormSettings.Visible</a> property as required by your scenario.</p>

<br/>


