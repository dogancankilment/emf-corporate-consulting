<%@ Page Title="Anasayfa" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="EMF._Anasayfa" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="slider" class="slider-parallax swiper_wrapper full-screen clearfix">

        <div class="slider-parallax-inner">

            <div class="swiper-container swiper-parent">
                <div class="swiper-wrapper">
                    <div class="swiper-slide dark" style="background-image: url('Content/images/slider1.jpeg');">
                    </div>
                    <div class="swiper-slide dark" style="background-image: url('Content/images/slider2.jpeg');">
                    </div>
                    <div class="swiper-slide dark" style="background-image: url('Content/images/slider3.jpeg');">
                    </div>
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

        <div class="content-wrap">
            <div id="oc-clients-full" class="owl-carousel image-carousel carousel-widget" data-margin="30" data-nav="false" data-loop="true" data-autoplay="5000" data-pagi="false" data-items-xxs="1" data-items-xs="1" data-items-sm="1" data-items-md="2" data-items-lg="3" style="margin-top: 30px; margin-left: -100px;">

                <a href="#">
                    <img src="Content/images/EMF%20FREN%20RESİMLERİ%20001.jpg" alt="Clients"></a>
                <a href="#">
                    <img src="Content/images/EMF%20FREN%20RESİMLERİ%20002.jpg" alt="Clients"></a>
                <a href="#">
                    <img src="Content/images/EMF%20FREN%20RESİMLERİ%20003.jpg" alt="Clients"></a>
                <a href="#">
                    <img src="Content/images/EMF%20FREN%20RESİMLERİ%20004.jpg" alt="Clients"></a>
                <a href="#">
                    <img src="Content/images/EMF%20FREN%20RESİMLERİ%20005.jpg" alt="Clients"></a>
                <a href="#">
                    <img src="Content/images/EMF%20FREN%20RESİMLERİ%20006.jpg" alt="Clients"></a>
                <a href="#">
                    <img src="Content/images/EMF%20FREN%20RESİMLERİ%20007.jpg" alt="Clients"></a>
                <a href="#">
                    <img src="Content/images/EMF%20FREN%20RESİMLERİ%20008.jpg" alt="Clients"></a>
                <a href="#">
                    <img src="Content/images/EMF%20FREN%20RESİMLERİ%20009.jpg" alt="Clients"></a>
            </div>
        </div>

        <h2 class="c-font-uppercase c-font-black c-font-bold text-center paddingtop5 margin0" style="padding-bottom: 15px; padding-top: 150px;">KATALOGLARIMIZ</h2>

        <div class="content-wrap" style="background-color: #bf272d;">
            <div class="c-content-box c-size-md c-bg-white">
            <div class="container">
                <div class="c-content-blog-post-card-1-slider" data-slider="owl">
                    <div class="c-content-title-1 ">
                        <div class="c-content-divider c-divider-sm c-icon-bg arkaplan-ana-renk-gri">
                            <i class="fa fa-bullhorn c-rounded c-font-white arkaplan-ana-renk-kirmizi"></i>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2" style=" border-radius: 5px; margin: 45px;">
                            <div class="c-content-testimonial-3 c-option-light">
                                <div class="c-content c-font-">
                                    <a href="#" class="btn btn-danger" style="width: 250px; margin-top: -28px; background-color: #bf272d; border: 1px solid white; height: 60px; word-wrap: break-word; display: block;">Akım Baskılı Tozlu Fren ve Kavrama</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2" style=" border-radius: 5px; margin: 45px;">
                            <div class="c-content-testimonial-3 c-option-light">
                                <div class="c-content c-font-black">
                                    <a href="#" class="btn btn-danger" style="width: 250px; margin-top: -28px; background-color: #bf272d; border: 1px solid white; height: 60px; word-wrap: break-word; display: block;">Akım Baskılı Fren ve Kavrama Grubu</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2" style=" border-radius: 5px; margin: 45px;">
                            <div class="c-content-testimonial-3 c-option-light">
                                <div class="c-content c-font-black">
                                    <a href="#" class="btn btn-danger" style="width: 250px; margin-top: -28px; background-color: #bf272d; border: 1px solid white; height: 60px; word-wrap: break-word; display: block;">Akım Baskılı Fren ve Kavrama</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2" style=" border-radius: 5px; margin: 45px;">
                            <div class="c-content-testimonial-3 c-option-light">
                                <div class="c-content c-font-black">
                                    <a href="#" class="btn btn-danger" style="width: 250px; margin-top: -28px; background-color: #bf272d; border: 1px solid white; height: 60px; word-wrap: break-word; display: block;">Yay Baskılı Frenler</a>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>

            <%--<div class="container-fullwidth">
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
            </div>--%>
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

    </section>


    <script>
        $(document).ready(function () {
            $('#myCarousel').carousel({
                interval: 5000
            })
        });
    </script>
</asp:Content>
