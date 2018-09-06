<%@ Page Title="Anasayfa" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="EMF._anasayfa" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="slider" class="slider-parallax swiper_wrapper full-screen clearfix">

        <div>

            <div class="swiper-container swiper-parent">
                <div class="swiper-wrapper">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                        ConnectionString="<%$ ConnectionStrings:emf_dbConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:emf_DbConnectionString.ProviderName %>"
                        SelectCommand=" select sliderlar_url from anasayfa where anasayfa_id<4"></asp:SqlDataSource>
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
                                <div class="col-xs-4">
                                    <a href="#1">
                                        <img src="Content/images/urun1.png" class="img-responsive" style="border-radius: 40px;"></a>
                                </div>
                                <div class="col-xs-4">
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
                                              </div>
                                 
                                                    
                                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <h2 class="c-font-uppercase c-font-black c-font-bold text-center paddingtop5 margin0" style="padding-bottom: 15px; padding-top: 150px;">KATALOGLARIMIZ</h2>
        <hr style="color: darkred;" />

        <div class="content-wrap" style="background-color: #bf272d;">
            <div class="container">
                <div class="c-content-blog-post-card-1-slider" data-slider="owl">
                    <div class="c-content-title-1 ">
                        <div class="c-content-divider c-divider-sm c-icon-bg arkaplan-ana-renk-gri">
                            <i class="fa fa-bullhorn c-rounded c-font-white arkaplan-ana-renk-kirmizi"></i>
                        </div>
                    </div>
                    <div class="row">
                         <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                        ConnectionString="<%$ ConnectionStrings:emf_dbConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:emf_DbConnectionString.ProviderName %>"
                        SelectCommand=" select katalog,katalog_name from anasayfa"></asp:SqlDataSource>
                        <asp:Repeater runat="server" DataSourceID="SqlDataSource3">
                             <ItemTemplate>
                        <div class="col-md-2" style="margin: 45px; color:azure;">
                            <div class="c-content-testimonial-3 c-option-light">
                                <div class="c-content c-font-black">
                                    <a href="Content/documents/<%# Eval("katalog") %>" class="btn btn-danger" style="width: 250px; margin-top: -28px; background-color: #bf272d; border: 1px solid white; height: 60px; word-wrap: break-word; display: block;"><%# Eval("katalog_name") %></a>
                                </div>
                            </div>
                        </div>  
                       </ItemTemplate>
                    </asp:Repeater>                   
                    </div>
                </div>
            </div>
        </div>

       <%-- <h2 class="c-font-uppercase c-font-black c-font-bold text-center paddingtop5 margin0" style="padding-bottom: 15px; padding-top: 150px;">KATALOGLARIMIZ</h2>
        <hr style="color: darkred;" />

        <div class="content-wrap" style="background-color: #bf272d;">
            <div class="container-fullwidth">
                <div class="row">

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                        ConnectionString="<%$ ConnectionStrings:emf_dbConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:emf_DbConnectionString.ProviderName %>"
                        SelectCommand=" select katalog from anasayfa"></asp:SqlDataSource>
                    <asp:Repeater runat="server" DataSourceID="SqlDataSource3">
                        <ItemTemplate>
                            <div class="col-md-3" style="margin: 30px; width: 20% !important;">
                                <div class="c-content-testimonial-3 c-option-light">
                                    <div class="c-content c-font-black">
                                        <a href="Content/documents/<%# Eval("katalog") %>" class="btn btn-danger" style="width: 250px; margin-top: -28px; background-color: #bf272d; border: 1px solid white; height: 60px; word-wrap: break-word; display: block;"><%# Eval("katalog") %></a>
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </div>--%>


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

                        <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                        ConnectionString="<%$ ConnectionStrings:emf_dbConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:emf_DbConnectionString.ProviderName %>"
                        SelectCommand=" select duyurular_url from anasayfa where anasayfa_id<4"></asp:SqlDataSource>
                        <asp:Repeater runat="server" DataSourceID="SqlDataSource4">
                            <ItemTemplate>                                
                        <div class="col-md-3" style="border: 1px solid darkred; border-radius: 5px; margin: 45px;">
                            <div class="c-content-testimonial-3 c-option-light">
                                <div class="c-content c-font-black">
                                    <p><%# Eval("duyurular_url") %></p>
                                </div>
                            </div>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="row">
                        <div class="row text-center" style="padding-top: 0px; margin-top: 50px;">
                            <a title="EMF Tüm Duyuruları Gör" href="/" class="btn btn-default c-font-black c-btn-square" style="background-color: red; color: white; border-radius: 10px; margin-top: -35px;">TÜM DUYURULAR</a>
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
                    <a title="EMF Videoları Gör" href="/" class="btn btn-default c-font-black c-btn-square" style="background-color: red; color: white; border-radius: 10px;">TÜM VİDEOLARI GÖR</a>
                </div>
            </div>
        </div>
    </section>

   

    <script>
        $(document).ready(function ()
        {
            $('#myCarousel').carousel({
                interval: 5000
            })
        });
    </script>
</asp:Content>
