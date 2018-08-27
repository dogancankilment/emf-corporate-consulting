<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="EMF.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="page-title">

			<div class="container clearfix">
				<h1>İLETİŞİM</h1>

			</div>

		</section><!-- #page-title end -->

		<!-- Google Map
		============================================= -->
           <iframe width="100%" height="75" frameborder="0" style="border: 0;height: 400px; padding-bottom: 20px;"
                   src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3007.9938179059604!2d28.798398915129848!3d41.069127779294625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14caa5906fb866ff%3A0x9fbfe6c222412a69!2sZiya+G%C3%B6kalp+Mahallesi%2C+5A+Block+No%3A54%2C+34490+%C4%B0kitelli+Osb%2FBa%C5%9Fak%C5%9Fehir%2FIstanbul!5e0!3m2!1str!2str!4v1503742226162"
                   allowfullscreen></iframe>



		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<!-- Postcontent
					============================================= -->
					<div class="postcontent nobottommargin">

						<h3>Bizimle İletişime Geçin</h3>

						<div class="contact-widget">

							<div class="contact-form-result"></div>
                         	<div class="nobottommargin" id="template-contactform">


                        	<div class="col_one_third">
									<label for="template-contactform-name">İsim <small>*</small></label>
									<asp:TextBox runat="server" ID="txtad" CssClass="sm-form-control required"></asp:TextBox>
								</div>

                            <div class="col_one_third">
									<label for="template-contactform-email">Email <small>*</small></label>
									<asp:TextBox runat="server" ID="txtemail" CssClass="required icon-email sm-form-control"></asp:TextBox>
								</div>
                            <div class="col_one_third col_last">
									<label for="template-contactform-phone">Tel<small>*</small></label>
									<asp:TextBox runat="server" ID="txttel" CssClass="sm-form-control"></asp:TextBox>
								</div>

                            <div class="clear"></div>
                                              <div class="col_full">                                                                      
                                <label for="template-contactform-message">Mesaj <small>*</small></label>
                                <asp:TextBox TextMode="MultiLine" ID="txtBody" runat="server" Rows="6" CssClass="required sm-form-control"/><br>
                                                  </div>

                                 <div class="col_full hidden">
									<input type="text" id="template-contactform-botcheck" name="template-contactform-botcheck" value="" class="sm-form-control" />
								</div>
                                 <div class="col_full">
                                <asp:Button ID="Btn_SendMail" runat="server" onclick="Btn_SendMail_Click" CssClass="button button-3d nomargin" Text="GÖNDER" /><br>
                                     </div>                         
                                  
                              </div>
                        </div>
						</div>

					<!-- .postcontent end -->

					<!-- Sidebar
					============================================= -->
					<div class="sidebar col_last nobottommargin">

						<address>
							<strong>Adres:</strong><br>
							Metal İş Sanayi Sitesi 12. Blok No:7-9 <br>
							İkitelli / İSTANBUL<br>
						</address>
						<abbr><strong>Telefon:</strong></abbr> 0(212)671 47 97<br>
						<abbr><strong>Fax:</strong></abbr> 0(212)671 47 26<br>
						<abbr><strong>E-posta:</strong></abbr> emf@emffren.com.tr

						<div class="widget noborder notoppadding">

							<a href="#" class="social-icon si-small si-dark si-facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>

							<a href="#" class="social-icon si-small si-dark si-twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>

                            <a href="#" class="social-icon si-small si-dark si-instagram">
								<i class="icon-instagram"></i>
								<i class="icon-instagram"></i>
							</a>

                            <a href="#" class="social-icon si-small si-dark si-youtube">
								<i class="icon-youtube"></i>
								<i class="icon-youtube"></i>
							</a>


                         
						</div>

					</div><!-- .sidebar end -->

				</div>
              </div>
			

		</section><!-- #content end -->

</asp:Content>
