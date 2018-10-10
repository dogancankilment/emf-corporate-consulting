<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="EMF.UrunDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="page-title" class="page-title-parallax3 page-title-dark page-title-center" style="height: 200px;" data-stellar-background-ratio="0.9">
        <div class="container clearfix" style="height: 180px;">
        </div>

    </section>
    <!-- #page-title end -->
    <section id="page-title">

        <div class="container clearfix">
            <h1 id="urunbaslik" runat="server"></h1>
        </div>

    </section>
    <!-- #page-title end -->

    <!-- Content
		============================================= -->
    <section id="content">

        <div class="content-wrap">

            <div class="container clearfix">

                <div class="single-product">

                    <div class="product">

                        <div class="col_two_fifth">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                ConnectionString="<%$ ConnectionStrings:emf_dbConnectionString %>"
                                ProviderName="<%$ ConnectionStrings:emf_dbConnectionString.ProviderName %>"
                                SelectCommand="select * from urunler as u, urunler_resim as ur where u.urun_id=@id and ur.urun_id = @id and ur.kontrol = 3"></asp:SqlDataSource>

                            <!-- Product Single - Gallery
								============================================= -->
                             <asp:Panel runat="server" ID="habercokluresim">
                            <div class="product-image">
                                <div class="fslider" data-pagi="false" data-arrows="false" data-thumbs="true">
                                    <div class="flexslider">
                                        <div class="slider-wrap" data-lightbox="gallery">                                            
                                            <asp:ListView ID="ListView1" runat="server" OnPreRender="ListView1_PreRender" DataSourceID="SqlDataSource2">
                                                <ItemTemplate>
                                                    <div class="slide" data-thumb="<%#"/Content/images/"+Eval("image_url") %>"><a href="<%#"/Content/images/"+Eval("image_url") %>" title="Pink Printed Dress - Front View" data-lightbox="gallery-item">
                                                        <img src="<%#"/Content/images/"+Eval("image_url") %>" alt="Pink Printed Dress"></a></div>
                                                </ItemTemplate>
                                            </asp:ListView>                                               
                                        </div>
                                    </div>
                                </div>
                            </div>
                                      </asp:Panel>
                            <!-- Product Single - Gallery End -->

                        </div>

                        <div class="col_two_fifth product-desc">


                            <!-- Product Single - Rating
								============================================= -->
                            <div class="product-rating">
                                <i class="icon-star3"></i>
                                <i class="icon-star3"></i>
                                <i class="icon-star3"></i>
                                <i class="icon-star3"></i>
                                <i class="icon-star-half-full"></i>
                            </div>
                            <!-- Product Single - Rating End -->

                            <div class="clear"></div>
                            <div class="line"></div>

                            <!-- Product Single - Quantity & Cart Button
								============================================= -->
                            <form class="cart nobottommargin clearfix" method="post" enctype='multipart/form-data'>
                                <div class="quantity clearfix">                                            
                                   <label class="qty">AÇIKLAMA</label>                              
                                </div>
                            </form>
                            <!-- Product Single - Quantity & Cart Button End -->

                            <div class="clear"></div>
                            <div class="line"></div>

                            <!-- Product Single - Short Description
								============================================= -->
                            <p id="urunicerik" runat="server"></p>

                            <ul class="iconlist">
                                <li><i class="icon-caret-right"></i>Dinamik Tercihler</li>
                                <li><i class="icon-caret-right"></i>İstenilen Çeşitler</li>
                                <li><i class="icon-caret-right"></i>Hatalı Çeşitte iade</li>
                            </ul>
                            <!-- Product Single - Short Description End -->

                            <!-- Product Single - Meta
								============================================= -->
                            <div class="panel panel-default product-meta">
                                <div class="panel-body">
                                    <span itemprop="productID" class="sku_wrapper">KOD: <span class="sku">8465415</span></span>
                                </div>
                            </div>
                            <!-- Product Single - Meta End -->

                            <!-- Product Single - Share
								============================================= -->
                            <div class="si-share noborder clearfix">
                                <span>Share:</span>
                                <div>
                                    <a href="iletisim.aspx" class="social-icon si-borderless si-email3">
                                        <i class="icon-email3"></i>
                                        <i class="icon-email3"></i>
                                    </a>
                                </div>
                            </div>
                            <!-- Product Single - Share End -->

                        </div>

                        <div class="col_one_fifth col_last">

                            <a href="#" title="Brand Logo" class="hidden-xs">
                                <img src="Content/images/dislilogo.jpg" alt="Brand Logo"></a>

                            <div class="divider divider-center"><i class="icon-circle-blank"></i></div>

                            <div class="feature-box fbox-plain fbox-dark fbox-small">
                                <div class="fbox-icon">
                                    <i class="icon-thumbs-up2"></i>
                                </div>
                                <h3>100% Orijinal</h3>
                                <p class="notopmargin">Orijinal parça garantilidir.</p>
                            </div>

                            <div class="feature-box fbox-plain fbox-dark fbox-small">
                                <div class="fbox-icon">
                                    <i class="icon-credit-cards"></i>
                                </div>
                                <h3>Ödeme Seçenekleri</h3>
                                <p class="notopmargin">Kart, nakit, havale kabul edilir.</p>
                            </div>

                            <div class="feature-box fbox-plain fbox-dark fbox-small">
                                <div class="fbox-icon">
                                    <i class="icon-truck2"></i>
                                </div>
                                <h3>Kargo</h3>
                                <p class="notopmargin">200 TL üzerine bedava kargo.</p>
                            </div>

                            <div class="feature-box fbox-plain fbox-dark fbox-small">
                                <div class="fbox-icon">
                                    <i class="icon-undo"></i>
                                </div>
                                <h3>İade</h3>
                                <p class="notopmargin">Hatalı parça iadesi.</p>
                            </div>

                        </div>

                        <div class="col_full nobottommargin">

                            <div class="tabs clearfix nobottommargin" id="tab-1">

                                <ul class="tab-nav clearfix">
                                    <li><a href="#tabs-1"><i class="icon-align-justify2"></i><span class="hidden-xs">Kısa Bilgi</span></a></li>
                                    <li><a href="#tabs-2"><i class="icon-info-sign"></i><span class="hidden-xs">Teknik Özellikler</span></a></li>
                                    <li><a href="#tabs-3"><i class="icon-star3"></i><span class="hidden-xs">Satıcı Yorum</span></a></li>
                                </ul>

                                <div class="tab-container">

                                    <div class="tab-content clearfix" id="tabs-1">
                                        <p>Pink printed dress,  woven, round neck with a keyhole and buttoned closure at the back, sleeveless, concealed zip up at left side seam, belt loops along waist with slight gathers beneath, brand appliqu?? above left front hem, has an attached lining.</p>
                                        Comes with a white, slim synthetic belt that has a tang clasp.
                                    </div>
                                    <div class="tab-content clearfix" id="tabs-2">

                                        <table class="table table-striped table-bordered">
                                            <tbody>
                                                <tr>
                                                    <td>Size</td>
                                                    <td>Small, Medium &amp; Large</td>
                                                </tr>
                                                <tr>
                                                    <td>Color</td>
                                                    <td>Pink &amp; White</td>
                                                </tr>
                                                <tr>
                                                    <td>Waist</td>
                                                    <td>26 cm</td>
                                                </tr>
                                                <tr>
                                                    <td>Length</td>
                                                    <td>40 cm</td>
                                                </tr>
                                                <tr>
                                                    <td>Chest</td>
                                                    <td>33 inches</td>
                                                </tr>
                                                <tr>
                                                    <td>Fabric</td>
                                                    <td>Cotton, Silk &amp; Synthetic</td>
                                                </tr>
                                                <tr>
                                                    <td>Warranty</td>
                                                    <td>3 Months</td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                    <div class="tab-content clearfix" id="tabs-3">

                                        <div id="reviews" class="clearfix">

                                            <ol class="commentlist clearfix">

                                                <li class="comment even thread-even depth-1" id="li-comment-1">
                                                    <div id="comment-1" class="comment-wrap clearfix">

                                                        <div class="comment-meta">
                                                            <div class="comment-author vcard">
                                                                <span class="comment-avatar clearfix">
                                                                    <img alt='' src='http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=60' height='60' width='60' /></span>
                                                            </div>
                                                        </div>

                                                        <div class="comment-content clearfix">
                                                            <div class="comment-author">Test Test<span><a href="#" title="Permalink to this comment">April 24, 2014 at 10:46AM</a></span></div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo perferendis aliquid tenetur. Aliquid, tempora, sit aliquam officiis nihil autem eum at repellendus facilis quaerat consequatur commodi laborum saepe non nemo nam maxime quis error tempore possimus est quasi reprehenderit fuga!</p>
                                                        </div>

                                                        <div class="clear"></div>

                                                    </div>
                                                </li>
                                            </ol>
                                            <!-- Modal Reviews
												============================================= -->                                        
                                            <div class="modal fade" id="reviewFormModal" tabindex="-1" role="dialog" aria-labelledby="reviewFormModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                            <h4 class="modal-title" id="reviewFormModalLabel">Submit a Review</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form class="nobottommargin" id="template-reviewform" name="template-reviewform" action="#" method="post">

                                                                <div class="col_half">
                                                                    <label for="template-reviewform-name">Name <small>*</small></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon"><i class="icon-user"></i></span>
                                                                        <input type="text" id="template-reviewform-name" name="template-reviewform-name" value="" class="form-control required" />
                                                                    </div>
                                                                </div>

                                                                <div class="col_half col_last">
                                                                    <label for="template-reviewform-email">Email <small>*</small></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">@</span>
                                                                        <input type="email" id="template-reviewform-email" name="template-reviewform-email" value="" class="required email form-control" />
                                                                    </div>
                                                                </div>

                                                                <div class="clear"></div>

                                                                <div class="col_full col_last">
                                                                    <label for="template-reviewform-rating">Rating</label>
                                                                    <select id="template-reviewform-rating" name="template-reviewform-rating" class="form-control">
                                                                        <option value="">-- Select One --</option>
                                                                        <option value="1">1</option>
                                                                        <option value="2">2</option>
                                                                        <option value="3">3</option>
                                                                        <option value="4">4</option>
                                                                        <option value="5">5</option>
                                                                    </select>
                                                                </div>

                                                                <div class="clear"></div>

                                                                <div class="col_full">
                                                                    <label for="template-reviewform-comment">Comment <small>*</small></label>
                                                                    <textarea class="required form-control" id="template-reviewform-comment" name="template-reviewform-comment" rows="6" cols="30"></textarea>
                                                                </div>

                                                                <div class="col_full nobottommargin">
                                                                    <button class="button button-3d nomargin" type="submit" id="template-reviewform-submit" name="template-reviewform-submit" value="submit">Submit Review</button>
                                                                </div>

                                                            </form>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->
                                            <!-- Modal Reviews End -->

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="clear"></div>
                <div class="line"></div>

            </div>

        </div>

    </section>
    <!-- #content end -->

    <script type="text/javascript">
        jQuery(document).ready(function ($)
        {

            $('#myCarousel').carousel({
                interval: 5000
            });

            //Handles the carousel thumbnails
            $('[id^=carousel-selector-]').click(function ()
            {
                var id_selector = $(this).attr("id");
                try
                {
                    var id = /-(\d+)$/.exec(id_selector)[1];
                    console.log(id_selector, id);
                    jQuery('#myCarousel').carousel(parseInt(id));
                } catch (e)
                {
                    console.log('Regex failed!', e);
                }
            });
            // When the carousel slides, auto update the text
            $('#myCarousel').on('slid.bs.carousel', function (e)
            {
                var id = $('.item.active').data('slide-number');
                $('#carousel-text').html($('#slide-content-' + id).html());
            });
        });
    </script>

</asp:Content>
