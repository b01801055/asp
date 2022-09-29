using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;   // StringBuilder會用到

 
public partial class Book_Sample_Ch15__Book_Page_CrossPagePosting_Allen_Kuo提供的範例_HttpContext : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // ...測試用................................
        Application.Lock();
              Application["test"] = "Test123";
        Application.UnLock();

        Session["test"] = "Test456";

        //== 程式由此開始======================
        #region  
        // The HttpContext associated with the page can be accessed by the Context property.
        StringBuilder sb = new System.Text.StringBuilder();   // 搭配 System.Text命名空間
        // Use the current HttpContext object to determine if custom errors are enabled.
        sb.Append("Is custom errors enabled: <font color=red>" + Context.IsCustomErrorEnabled.ToString() + "</font><br/>");

        // Use the current HttpContext object to determine if debugging is enabled.
        sb.Append("Is debugging enabled: <font color=red>" + Context.IsDebuggingEnabled.ToString() + "</font><br/>");

        // Use the current HttpContext object to access the current TraceContext object.
        sb.Append("Trace Enabled: <font color=red>" + Context.Trace.IsEnabled.ToString() + "</font><br/>");
        sb.Append("<hr/>");

        // Use the current HttpContext object to access the current HttpApplicationState object.
        sb.Append("Number of items in Application state:<font color=red> " + Context.Application.Count.ToString() + "</font><br/>");

        // Use the current HttpContext object to access the current HttpSessionState object.
        // Session state may not be configured.
        try
        {
            sb.Append("Number of items in Session state: <font color=red>" +  Context.Session.Count.ToString() + "</font><br/>");
        }
        catch
        {
            sb.Append("Session state not enabled. <br/>");
        }

        // Use the current HttpContext object to access the current Cache object.
        sb.Append("Number of items in the cache: <font color=red>" +  Context.Cache.Count.ToString() + "</font><br/>");

        // Use the current HttpContext object to determine the timestamp for the current HTTP Request.
        sb.Append("Timestamp for the HTTP request: <font color=red>" +   Context.Timestamp.ToString() + "<br/>");

        // Assign StringBuilder object to output label.
        OutputLabel.Text = sb.ToString();
        #endregion
    }
}