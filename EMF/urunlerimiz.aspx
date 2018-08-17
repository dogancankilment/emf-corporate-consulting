<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Urunlerimiz.aspx.cs" Inherits="EMF.Urunlerimiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    		<section id="page-title" class="page-title-parallax3 page-title-dark page-title-center" data-stellar-background-ratio="0.9">
			<div class="container clearfix">
				<h1 data-animate="fadeInUp" style="font-size: 70px !important; margin-top: 120px; color:white; font-weight: bolder;" >ÜRÜNLERİMİZ</h1>
                <span data-animate="fadeInUp" data-delay="300">Elektromanyetik Fren ve Kavrama Sistemleri</span>
			</div>

		    </section><!-- #page-title end -->

    <div class="container clearfix" id="portfolio">
  <div class="row row-content" class="portfolio-row">

    <br>
    <div class="row">
              <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString="<%$ ConnectionStrings:emf_dbConnectionString %>"
        ProviderName="<%$ ConnectionStrings:emf_DbConnectionString.ProviderName %>"
        SelectCommand=" select image_url,isim from urunler_resim ur inner join urunler u on ur.urun_id = u.urun_id where kontrol=2"></asp:SqlDataSource>
        <asp:Repeater runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                  <div class="col-sm-4 col-md-4">
        <div class="thumbnail">
          <a href="UrunDetay.aspx">
            <img src="Content/images/<%# Eval("image_url") %>" class="img-responsive">
            <div class="hover-opaque">
            </div>
            <i class="fa fa-fire fa-3x"></i>
          </a>
        </div>
        <div class="thumbnail thumbnail-caption text-center">
          <figcaption><a href="UrunDetay.aspx"><%# Eval("isim") %></a></figcaption>
        </div>
      </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
  </div>
</div>

</asp:Content>
