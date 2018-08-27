using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EMF
{
    public partial class UrunDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["postquestion"] != null)
            {
                if (!IsPostBack)
                {
                    DataTable urundetay = islem.UrunGetir(Request.QueryString["postquestion"]);
                    urunbaslik.InnerHtml = urundetay.Rows[0]["isim"].ToString();
                    urunicerik.InnerHtml = urundetay.Rows[0]["icerik"].ToString();

                    DataTable urunresim = islem.ResimGetir(Request.QueryString["postquestion"]);
                    urungorsel.ImageUrl = "~/Content/images/" + urunresim.Rows[0]["image_url"].ToString();
                    //tarih.InnerHtml = Convert.ToDateTime(haberdetay.Rows[0]["tarih"]).ToString("dd.MM.yyyy");
                    SqlDataSource2.SelectParameters.Add("id", Request.QueryString["postquestion"]);

                }
            }
            else Response.Redirect("Urunlerimiz.aspx");

        }
        protected void ListView1_PreRender(object sender, EventArgs e)
        {

            if (ListView1.Items.Count == 0)
            {
                habercokluresim.Visible = false;
            }
            else habercokluresim.Visible = true;
        }
    }
}