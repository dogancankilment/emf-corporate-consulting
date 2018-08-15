<%@ Page Title="Ürün Detay" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="EMF.UrunDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <div class="container">
    <div id="main_area">
        <!-- Slider -->

        <div class="row" style="margin-top:80px;">

            
            <blockquote>
            <h1>PERMAG (DOĞAL MIKNATISLI FREN SİSTEMİ)</h1>
            <p>Akımsız durumda armatür disk sabit mıknatıslı alanın dinamik etkisi ile mıknatısın kutup yüzüne çekilir. Bir sürtünme yapar ve flanş ile bağlantı oluşturur.
Uygulama zamanında mevcut doğal mıknatısın manyetik alanı, uyguladığında bobinin müdahalesi ile manyetik alan nötüralize edilir. Montaj konumuna bağımsız olarak bir kalıntı içermeden ayırma gerçekleşir. 
Mıknatısların hemen yakınında bulunan mıknatıslanabilir malzemenin makine parçaları tork azaltabilir ve maksimum izin verilen boşluk ve serbest aralık değişikliğine yol açabilir. Böyle bir durumda fren manyetik verileri fabrika adaptasyonu gerektirir. Nominal torkuna güvenli bir çalışma aşamasından sonra ulaşılır.
</p>
</blockquote>
        </div>

        <div class="row" style="margin-bottom:20px;">

            <div class="col-sm-6" id="slider-thumbs">
                <!-- Bottom switcher of slider -->
                <ul class="hide-bullets" style="list-style-type: none;">
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-0">
                            <img src="Content/images/urunP1.JPG">
                        </a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-1"><img src="Content/images/urunP2.JPG"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-2"><img src="Content/images/urunP3.JPG"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-3"><img src="Content/images/urunP4.JPG"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-4"><img src="Content/images/urunP5.JPG"></a>
                    </li>



                </ul>
            </div>
            <div class="col-sm-6">
                <div class="col-xs-12" id="slider">
                    <!-- Top part of the slider -->
                    <div class="row">
                        <div class="col-sm-12" id="carousel-bounding-box">
                            <div class="carousel slide" id="myCarousel">
                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                    <div class="active item" data-slide-number="0">
                                        <img src="Content/images/urunP1.JPG"></div>

                                    <div class="item" data-slide-number="1">
                                        <img src="Content/images/urunP2.JPG"></div>

                                    <div class="item" data-slide-number="2">
                                        <img src="Content/images/urunP3.JPG"></div>

                                    <div class="item" data-slide-number="3">
                                        <img src="Content/images/urunP4.JPG"></div>

                                    <div class="item" data-slide-number="4">
                                        <img src="Content/images/urunP5.JPG"></div>

                                   
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
            </div>
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
