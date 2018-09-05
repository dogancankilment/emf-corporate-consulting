<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="EMF.UrunDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="page-title" class="page-title-parallax3 page-title-dark page-title-center" style="height:200px;" data-stellar-background-ratio="0.9">
			<div class="container clearfix" style="height:100px;">
			</div>

		    </section><!-- #page-title end -->
  <div class="container">
        <!-- Slider -->

        <div class="row">
           
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString="<%$ ConnectionStrings:emf_dbConnectionString %>"
        ProviderName="<%$ ConnectionStrings:emf_dbConnectionString.ProviderName %>"
        SelectCommand="select * from urunler as u, urunler_resim as ur where u.urun_id=@id and ur.urun_id = @id and ur.kontrol = 3"></asp:SqlDataSource>
            
            <h1 id="urunbaslik" style="margin-top: 25px;" runat="server"></h1> 
            <p id="urunicerik" runat="server"></p>
        </div>

        <div class="row" style="margin-bottom:20px;">

            <div class="col-sm-12" id="slider-thumbs" style="text-align:center; ">
                <!-- Bottom switcher of slider -->
                <ul class="hide-bullets" style="list-style-type: none;">
                    <asp:Panel runat="server" ID="habercokluresim">
                    <div class="row">

                        <div class="featured-box featured-box-primary col-lg-12" style="padding: 0px;">
                            <div class="box-content">
                                
                                <div class="col-md-12" style="margin-bottom:25px;">
                               
                               
                                        <asp:ListView ID="ListView1" runat="server" OnPreRender="ListView1_PreRender" DataSourceID="SqlDataSource2">
                                            <ItemTemplate>
                                                  
                                                <a href="<%#"/Content/images/"+Eval("image_url") %>">
                                                    <img src="<%#"/Content/images/"+Eval("image_url") %>" width="150" height="150">
                                                
                                            </ItemTemplate>
                                        </asp:ListView>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    </asp:Panel>          
                 

                </ul>
            </div>
           <%-- <div class="col-sm-6">
                <div class="col-xs-12" id="slider">
                    <!-- Top part of the slider -->
                    <div class="row">
                        <div class="col-sm-12" id="carousel-bounding-box">
                            <div class="carousel slide" id="myCarousel">
                                <!-- Carousel items -->
                                <div class="carousel-inner">                                    
                                    <div class="active item" data-slide-number="0">
                                        <img src="Content/images/permag1.jpg"></div>
                                        <asp:Repeater runat="server" DataSourceID="SqlDataSource2">
                                        <ItemTemplate>
                                    <div class="item" data-slide-number="1">
                                        <img src="<%#"Content/images/"+Eval("image_url") %>"></div>
                                        </ItemTemplate>
                                   </asp:Repeater>
                                </div>
                                <!-- Carousel nav -->
                                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <!--/Slider-->
        </div>


    </div>
</div>
  <script type="text/javascript">
	  jQuery(document).ready(function($) {
 
        $('#myCarousel').carousel({
                interval: 5000
        });
 
        //Handles the carousel thumbnails
        $('[id^=carousel-selector-]').click(function () {
        var id_selector = $(this).attr("id");
        try {
            var id = /-(\d+)$/.exec(id_selector)[1];
            console.log(id_selector, id);
            jQuery('#myCarousel').carousel(parseInt(id));
        } catch (e) {
            console.log('Regex failed!', e);
        }
    });
        // When the carousel slides, auto update the text
        $('#myCarousel').on('slid.bs.carousel', function (e) {
                 var id = $('.item.active').data('slide-number');
                $('#carousel-text').html($('#slide-content-'+id).html());
        });
});
	</script>

</asp:Content>
