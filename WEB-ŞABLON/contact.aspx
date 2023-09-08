<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- main-area -->
    <main>

        <!-- breadcrumb-area -->
        <section class="breadcrumb-area breadcrumb-bg" data-background="img/bg/breadcrumb_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-content text-center">
                            <h2>Bize Ulaşın</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Anasayfa</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Bize Ulaşın</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- contact-area -->
        <section class="contact-area pt-120">
            <div class="container">
                <div class="row">
                    <asp:Repeater ID="Repeater1" runat="server">
                         <ItemTemplate> 
                              <div class="col-xl-5 col-lg-6">
                        <div class="contact-info-wrap">
                            <div class="section-title text-left mb-25">
                                <span class="sub-title"><%#Eval("ek2")%></span>
                                <h2 class="title"><%#Eval("ek3")%></h2>
                                <div class="line">
                                    <img src="<%#Eval("ek1")%>" alt=""></div>
                            </div>
                            <p>İletişim bilgileri, işe alım görevlilerinin sizinle iletişim kurmasını sağlayan sağladığınız verilerdir. Tüm profesyoneller için.</p>
                            <ul class="contact-info-list">
                                <li>
                                    <div class="icon"><i class="fas fa-map-marker-alt"></i></div>
                                    <div class="content">
                                        <h5>Şirket Ofisi</h5>
                                        <p><%#Eval("adres")%></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon"><i class="fas fa-phone-alt"></i></div>
                                    <div class="content">
                                        <h5>Yardım Hattı Numarası</h5>
                                        <p><a href="#!"><%#Eval("telefon")%></a></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon"><i class="far fa-envelope"></i></div>
                                    <div class="content">
                                        <h5>Bize Soru Sor</h5>
                                        <p><a href="!"><span class="__cf_email__"><%#Eval("mail")%></span></a></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                         </ItemTemplate>
                    </asp:Repeater>

                   
                    <div class="col-xl-7 col-lg-6">
                        <div class="contact-form-wrap">
                            <div class="login-wrap">
                                <h3 class="widget-title">Gönderme <span>İsteğiniz</span></h3>
                                <div class="login-form">
                                    <div class="form-grp">
                                        <label for="name">İsminiz<span>*</span></label>
                                        <input type="text" id="name" placeholder="Jon Deo">
                                    </div>
                                    <div class="form-grp">
                                        <label for="email"> Email Adresiniz <span>*</span></label>
                                        <input type="email" id="email" placeholder="info@car.com">
                                    </div>
                                    <div class="form-grp">
                                        <label for="message">Mesajınız <span>*</span></label>
                                        <textarea name="message" id="message" placeholder="Merhaba..."></textarea>
                                    </div>
                                    <button class="btn">Gönder</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- contact-area-end -->

        <!-- contact-map -->
        <div id="contact-map"></div>
        <!-- contact-map-end -->

     

    </main>
    <!-- main-area-end -->
</asp:Content>

