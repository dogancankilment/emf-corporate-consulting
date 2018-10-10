using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;

namespace EMF
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void drpDil_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["dil"] = drpDil.SelectedValue;
            Response.Redirect(Request.RawUrl);
        }
        protected void drpDil_PreRender(object sender, EventArgs e)
        {
            if (Session["dil"] != null)
            {
                drpDil.SelectedValue = Session["dil"].ToString();
            }
        }
    }
    public class TemelPage : Page
    {
        protected override void InitializeCulture()
        {
            string strDil;
            if (Session["dil"] == null)
            {
                strDil = "tr-TR";
                Session["dil"] = strDil;
            }
            else
            {
                strDil = Session["dil"].ToString();
            }
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(strDil);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(strDil);
            base.InitializeCulture();
        }
    }
}
