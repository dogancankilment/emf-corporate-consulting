<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EMF._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="slider" class="slider-parallax swiper_wrapper full-screen clearfix">

        <div class="slider-parallax-inner">

            <div class="swiper-container swiper-parent">
                <div class="swiper-wrapper">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                        ConnectionString="<%$ ConnectionStrings:emf_dbConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:emf_DbConnectionString.ProviderName %>"
                        SelectCommand=" select sliderlar_url from anasayfa "></asp:SqlDataSource>
                    <asp:Repeater runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <div class="swiper-slide dark" style="background-image: url('Content/images/<%# Eval("sliderlar_url") %>');">
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div id="slider-arrow-left"><i class="icon-angle-left"></i></div>
                <div id="slider-arrow-right"><i class="icon-angle-right"></i></div>
                <div id="slide-number">
                    <div id="slide-number-current"></div>
                    <span>/</span><div id="slide-number-total"></div>
                </div>
            </div>

        </div>

    </section>

    <section id="content">

        <h2 class="c-font-uppercase c-font-black c-font-bold text-center paddingtop5 margin0" style="padding-bottom: 15px; padding-top: 75px;">ÜRÜNLERİMİZ</h2>
        <hr style="color: darkred;" />

        <%--	<div class="content-wrap">
            <div id="oc-clients-full" class="owl-carousel image-carousel carousel-widget" data-margin="30" data-nav="false" data-loop="true" data-autoplay="5000" data-pagi="false" data-items-xxs="1" data-items-xs="1"  data-items-sm="1" data-items-md="2" data-items-lg="3" style="margin-top:30px; margin-left: -100px;">

						<a href="#"><img src="Content/images/EMF%20FREN%20RESİMLERİ%20001.jpg" alt="Clients" ></a>
						<a href="#"><img src="Content/images/EMF%20FREN%20RESİMLERİ%20002.jpg" alt="Clients" ></a>
						<a href="#"><img src="Content/images/EMF%20FREN%20RESİMLERİ%20003.jpg" alt="Clients" ></a>
						<a href="#"><img src="Content/images/EMF%20FREN%20RESİMLERİ%20004.jpg" alt="Clients" ></a>
						<a href="#"><img src="Content/images/EMF%20FREN%20RESİMLERİ%20005.jpg" alt="Clients" ></a>
						<a href="#"><img src="Content/images/EMF%20FREN%20RESİMLERİ%20006.jpg" alt="Clients" ></a>
						<a href="#"><img src="Content/images/EMF%20FREN%20RESİMLERİ%20007.jpg" alt="Clients" ></a>
						<a href="#"><img src="Content/images/EMF%20FREN%20RESİMLERİ%20008.jpg" alt="Clients" ></a>
						<a href="#"><img src="Content/images/EMF%20FREN%20RESİMLERİ%20009.jpg" alt="Clients" ></a>
			</div>      
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Ürünlerimiz</h3>
						<p>Baskı hacmi, baskı hızı ve extruder sayısı gibi kriterlere göre size en uygun 3D yazıcı için doğru adrestesiniz.</p>
					</div>
				</div>
				<div class="owl-carousel owl-carousel2">
					<div class="column">
						<a href="f160.html">
							<img src="Content/images/EMF%20FREN%20RESİMLERİ%20001.jpg" alt="image">
						</a>
					</div>
					<div class="column">
						<a href="dx-dxplus.html">
							<img src="Content/images/EMF%20FREN%20RESİMLERİ%20001.jpg" alt="image">
						</a>
					</div>
					<div class="column">
						<a href="de-deplus.html">
							<img src="Content/images/EMF%20FREN%20RESİMLERİ%20001.jpg" alt="image">
						</a>
					</div>
					<div class="column">
						<a href="f430.html">
							<img src="Content/images/EMF%20FREN%20RESİMLERİ%20001.jpg" alt="image">
						</a>
					</div>
					<div class="column">
						<a href="d600.html">
							<img src="Content/images/EMF%20FREN%20RESİMLERİ%20001.jpg" alt="image">
						</a>
					</div>

				</div>
			</div>
         </div>--%>

        <div class="c-content-box c-size-md c-bg-white">
            <div class="container">
                <div class="c-content-blog-post-card-1-slider" data-slider="owl">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                             <div class="item active">

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:emf_dbConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:emf_DbConnectionString.ProviderName %>"
                        SelectCommand=" select image_url from urunler_resim where kontrol=1 "></asp:SqlDataSource>
                                <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                       
                                <div class="col-xs-4">
                                    <a href="#1">
                                        <img src="Content/images/<%# Eval("image_url") %>" class="img-responsive" style="border-radius: 40px;"></a>
                                </div>
                                           
                                        </ItemTemplate>
                                </asp:Repeater>
                                  </div>

                              <%--  <div class="col-xs-4">
                                    <a href="#1">
                                        <img src="Content/images/urun2.png" class="img-responsive" style="border-radius: 40px;"></a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="#1">
                                        <img src="Content/images/urun3.png" class="img-responsive" style="border-radius: 40px;"></a>
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-xs-4">
                                    <a href="#1">
                                        <img src="Content/images/urun4.png" class="img-responsive" style="border-radius: 40px;"></a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="#1">
                                        <img src="Content/images/urun5.png" class="img-responsive" style="border-radius: 40px;"></a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="#1">
                                        <img src="Content/images/urun6.png" class="img-responsive" style="border-radius: 40px;"></a>
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-xs-4">
                                    <a href="#1">
                                        <img src="Content/images/urun7.png" class="img-responsive" style="border-radius: 40px;"></a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="#1">
                                        <img src="Content/images/urun8.png" class="img-responsive" style="border-radius: 40px;"></a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="#1">
                                        <img src="Content/images/urun9.png" class="img-responsive" style="border-radius: 40px;"></a>
                                </div>
                            </div>--%>

                        </div>

                        <!-- Controls -->
                        <%--  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>--%>
                    </div>
                </div>
            </div>
        </div>

        <h2 class="c-font-uppercase c-font-black c-font-bold text-center paddingtop5 margin0" style="padding-bottom: 15px; padding-top: 150px;">KATALOGLARIMIZ</h2>
        <hr style="color: darkred;" />

        <div class="content-wrap" style="background-color: #bf272d;">
            <div class="container-fullwidth">
                <div class="row">
                    <div class="col-md-3" style="margin: 30px; width: 20% !important;">
                        <div class="c-content-testimonial-3 c-option-light">
                            <div class="c-content c-font-black">
                                <a href="#" class="btn btn-danger" style="width: 250px; margin-top: -28px; background-color: #bf272d; border: 1px solid white; height: 60px; word-wrap: break-word; display: block;">Yay Baskılı Frenler</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3" style="margin: 30px; width: 20% !important;">
                        <div class="c-content-testimonial-3 c-option-light">
                            <div class="c-content c-font-black">
                                <a href="#" class="btn btn-danger" style="width: 250px; margin-top: -28px; background-color: #bf272d; border: 1px solid white; height: 60px; word-wrap: break-word; display: block;">Akım Baskılı Fren ve Kavrama</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3" style="margin: 30px; width: 20% !important;">
                        <div class="c-content-testimonial-3 c-option-light">
                            <div class="c-content c-font-black">
                                <a href="#" class="btn btn-danger" style="width: 250px; margin-top: -28px; background-color: #bf272d; border: 1px solid white; height: 60px; word-wrap: break-word; display: block;">Akım Baskılı Tozlu Fren ve Kavrama</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3" style="margin: 30px; width: 20% !important;">
                        <div class="c-content-testimonial-3 c-option-light">
                            <div class="c-content c-font-black">
                                <a href="#" class="btn btn-danger" style="width: 250px; margin-top: -28px; background-color: #bf272d; border: 1px solid white; height: 60px; word-wrap: break-word; display: block;">Akım Baskılı Fren ve Kavrama Grubu</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="c-content-box c-size-md c-bg-white">
            <div class="container">
                <div class="c-content-blog-post-card-1-slider" data-slider="owl">
                    <div class="c-content-title-1 ">
                        <h2 style="text-align: center; padding-top: 90px;">DUYURULAR</h2>
                        <hr style="color: darkred;" />
                        <div class="c-content-divider c-divider-sm c-icon-bg arkaplan-ana-renk-gri">
                            <i class="fa fa-bullhorn c-rounded c-font-white arkaplan-ana-renk-kirmizi"></i>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3" style="border: 1px solid darkred; border-radius: 5px; margin: 45px;">
                            <div class="c-content-testimonial-3 c-option-light">
                                <div class="c-content c-font-black">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae fringilla est. Mauris tincidunt dolor tortor.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3" style="border: 1px solid darkred; border-radius: 5px; margin: 45px;">
                            <div class="c-content-testimonial-3 c-option-light">
                                <div class="c-content c-font-black">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae fringilla est. Mauris tincidunt dolor tortor.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3" style="border: 1px solid darkred; border-radius: 5px; margin: 45px;">
                            <div class="c-content-testimonial-3 c-option-light">
                                <div class="c-content c-font-black">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae fringilla est. Mauris tincidunt dolor tortor.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="row text-center" style="padding-top: 0px; margin-top: 50px;">
                            <a title="EMF Tüm Duyuruları Gör" href="/Tum-Videolar/" class="btn btn-default c-font-black c-btn-square" style="background-color: red; color: white; border-radius: 10px; margin-top: -35px;">TÜM DUYURULAR</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <h2 class="c-font-uppercase c-font-black c-font-bold text-center paddingtop5 margin0" style="padding-bottom: 15px; padding-top: 75px;">YOUTUBE KANALIMIZ</h2>
        <hr style="color: darkred;" />
        <div class="c-content-box c-size-md c-bg-img-top c-bg-parallax" style="background-image: url(Content/images/youtube.jpeg); background-repeat: round;">
            <div class="container" style="padding-top: 40px; padding-bottom: 40px;">

                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 hid">
                        <div class="row">
                            <div class="col-sm-6 col-sm-offset-3 text-center">
                                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/goXg68hG9Vc" frameborder="0" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row text-center" style="padding-top: 15px;">
                    <a title="EMF Videoları Gör" href="/Tum-Videolar/" class="btn btn-default c-font-black c-btn-square" style="background-color: red; color: white; border-radius: 10px;">TÜM VİDEOLARI GÖR</a>
                </div>
            </div>
        </div>



        <%--<div class="c-content-box c-size-md c-bg-white">
            <div class="container">
                <div class="c-content-blog-post-card-1-slider" data-slider="owl">
                    <div class="c-content-title-1 ">
                        <h2 style="text-align:center; padding-top: 90px;">ÜRÜNLERİMİZ</h2>
                        <hr style="color:darkred;"/>
                        <div class="c-content-divider c-divider-sm c-icon-bg arkaplan-ana-renk-gri">
                            <i class="fa fa-bullhorn c-rounded c-font-white arkaplan-ana-renk-kirmizi"></i>
                        </div>
                    </div>
                        <div class="row">
                        <div class="col-md-3" style="border:1px solid darkred; border-radius:5px;  margin:45px;">
                                    <div class="c-content-testimonial-3 c-option-light">
                                        <div class="c-content c-font-black">
                                            <a href="#"><img src="Content/images/resim1.png" alt="Image 1"></a>
                                        </div>
                                    </div>
                                </div>
                        <div class="col-md-3" style="border:1px solid darkred; border-radius:5px;  margin:45px;">
                                    <div class="c-content-testimonial-3 c-option-light">
                                        <div class="c-content c-font-black">
                                            <a href="#"><img src="Content/images/resim1.png" alt="Image 1"></a>
                                        </div>
                                    </div>
                                </div>
                        <div class="col-md-3" style="border:1px solid darkred; border-radius:5px; margin:45px;">
                                    <div class="c-content-testimonial-3 c-option-light">
                                        <div class="c-content c-font-black">
                                            <a href="#"><img src="Content/images/resim1.png" alt="Image 1"></a>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    <div class="row">
                      <div class="row text-center" style="padding-top: 0px; margin-top: 50px;">
                        <a title="EMF Tüm Duyuruları Gör" href="/Tum-Videolar/" class="btn btn-default c-font-black c-btn-square" style="background-color: red;color: white;border-radius: 10px; margin-top: -35px;">TÜM DUYURULAR</a>
                     </div>
                   </div>
                </div>
            </div>
        </div>--%>
    </section>

    <%--   <section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<div class="fancy-title title-center title-dotted-border">
						<h3>Image Carousel</h3>
					</div>

					<div id="oc-images" class="owl-carousel image-carousel carousel-widget" data-margin="20" data-nav="true" data-pagi="false" data-items-xxs="1" data-items-xs="2" data-items-sm="3" data-items-md="4" style="margin-right:0px !important;">

						<div class="oc-item">
							<a href="#"><img src="Content/images/resim1.png" alt="Image 1"></a>
						</div>
						<div class="oc-item">
							<a href="#"><img src="Content/images/resim1.png" alt="Image 2"></a>
						</div>
						<div class="oc-item">
							<a href="#"><img src="Content/images/resim1.png" alt="Image 3"></a>
						</div>
						<div class="oc-item">
							<a href="#"><img src="Content/images/resim1.png" alt="Image 4"></a>
						</div>
						<div class="oc-item">
							<a href="#"><img src="Content/images/resim1.png" alt="Image 5"></a>
						</div>
						<div class="oc-item">
							<a href="#"><img src="Content/images/resim1.png" alt="Image 6"></a>
						</div>
						<div class="oc-item">
							<a href="#"><img src="Content/images/resim1.png" alt="Image 7"></a>
						</div>

					</div>


					<div class="clear"></div>                </div>
               </div>
             </section>--%>

    <script>
        $(document).ready(function ()
        {
            $('#myCarousel').carousel({
                interval: 5000
            })
        });
    </script>
</asp:Content>
