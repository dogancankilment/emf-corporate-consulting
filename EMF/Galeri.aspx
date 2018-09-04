<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="galeri.aspx.cs" Inherits="EMF.galeri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


      <section id="page-title" class="page-title-parallax5 page-title-dark page-title-center" data-stellar-background-ratio="0.2">
			<div class="container clearfix">
				<h1 style="color: white;font-weight: bolder;font-size: 70px !important; margin-top: 120px;">GALERİ</h1>
			</div>

	 </section><!-- #page-title end -->



  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

 <div class="container">
        <div class="row">

        <br/>

            <div style="padding-top: 10px; padding-bottom:10px;" class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
            </div>

            <div style="padding-top: 10px; padding-bottom:10px;" class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter sprinkle">
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
            </div>

            <div style="padding-top: 10px; padding-bottom:10px;" class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
            </div>

            <br />

            <div style="padding-top: 10px; padding-bottom:10px;" class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation">
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
            </div>

            <div style="padding-top: 10px; padding-bottom:10px;" class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray">
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
            </div>

            <div style="padding-top: 10px; padding-bottom:10px;" class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation">
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
            </div>

        </div>
    </div>
</section>

    <script>
        $(document).ready(function () {

            $(".filter-button").click(function () {
                var value = $(this).attr('data-filter');

                if (value == "all") {
                    //$('.filter').removeClass('hidden');
                    $('.filter').show('1000');
                }
                else {
                    //            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
                    //            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
                    $(".filter").not('.' + value).hide('3000');
                    $('.filter').filter('.' + value).show('3000');

                }
            });

            if ($(".filter-button").removeClass("active")) {
                $(this).removeClass("active");
            }
            $(this).addClass("active");

        });
    </script>

</asp:Content>
