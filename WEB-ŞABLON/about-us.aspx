<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about-us.aspx.cs" Inherits="about_us" %>

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
                            <h2>Hakkımızda</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="Default.aspx">Anasayfa</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Profil</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- inner-about-area -->
        <section class="inner-about-area gray-lite-bg pt-120 pb-60">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="inner-about-img mb-75">
                            <img src="img/images/about_img.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-10">
                                <div class="inner-about-content mb-60">
                                    <div class="section-title mb-25">
                                        <span class="sub-title"><%#Eval("ek1")%></span>
                                        <h2 class="title"><%#Eval("baslik")%></h2>
                                        <div class="line">
                                            <img src="<%#Eval("foto")%>" alt="">
                                        </div>
                                    </div>
                                    <p>
                                        <%#Eval("aciklama")%>
                                    </p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-8">
                                <div class="about-features-item">
                                    <div class="icon">
                                        <i class="flaticon-fan"></i>
                                    </div>
                                    <div class="content">
                                        <h5><%#Eval("ek2")%></h5>
                                    </div>
                                </div>
                                <div class="about-features-item">
                                    <div class="icon">
                                        <i class="flaticon-piston"></i>
                                    </div>
                                    <div class="content">
                                        <h5><%#Eval("ek2")%></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-8">
                                <div class="about-features-item">
                                    <div class="icon">
                                        <i class="flaticon-belt"></i>
                                    </div>
                                    <div class="content">
                                        <h5><%#Eval("ek4")%></h5>
                                    </div>
                                </div>
                                <div class="about-features-item">
                                    <div class="icon">
                                        <i class="flaticon-jerrycan"></i>
                                    </div>
                                    <div class="content">
                                        <h5><%#Eval("ek5")%></h5>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <%--<div class="container">

                <div class="row">
                    <div class="col-12">
                        <div class="inner-about-img mb-75">
                            <img src="img/images/about_img.jpg" alt="">
                        </div>
                    </div>
                </div>--%>

            <%--              <div class="row justify-content-center">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-10">
                                <div class="inner-about-content mb-60">
                                    <div class="section-title mb-25">
                                        <span class="sub-title"><%#Eval("ek1")%></span>
                                        <h2 class="title"><%#Eval("baslik")%><span>.</span></h2>
                                        <div class="line">
                                            <img src="<%#Eval("foto")%>" alt=""></div>
                                    </div>
                                    <p><%#Eval("aciklama")%></p>
                                </div>
                            </div>

                          

                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>--%>
        </section>
        <!-- inner-about-area-end -->

        <!-- about-area -->
        <section class="about-area about-bg pt-120 pb-120" data-background="img/bg/about_bg.jpg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="about-img-wrap">
                            <div class="row align-items-end">
                                <asp:Repeater ID="Repeater2" runat="server">
                                    <ItemTemplate>
                                        <div class="col-sm-6">
                                            <div class="about-exp">
                                                <h2>49<span>+</span></h2>
                                            </div>
                                            <div class="about-img">
                                                <img src="<%#Eval("foto1")%>" alt="">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="about-img">
                                                <img src="<%#Eval("foto2")%>" alt="">
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-content-wrap">
                            <div class="section-title white-title mb-40">
                                <span class="sub-title">Şirketimiz Hakkında</span>
                                <h2 class="title">More for trade-in could increase car here<span>.</span></h2>
                            </div>
                            <div class="content">
                                <div class="icon">
                                    <img src="img/images/m.png" alt="">
                                </div>
                                <p>
                                    Lorem ipsum veya Lipsum bazen bilindiği gibi baskı, grafik veya web tasarımlarının düzenlenmesinde kullanılan sahte metindir. Geçit bir bilinmeyene atfedilir.
                                </p>
                            </div>
                            <div class="about-list mb-40">
                                <ul>
                                    <li>
                                        <div class="icon"><i class="fas fa-check"></i></div>
                                        Bazen bilinen kukla
                                    </li>
                                    <li>
                                        <div class="icon"><i class="fas fa-check"></i></div>
                                        İşinizi geliştirmek için en iyi çözüm
                                    </li>
                                    <li>
                                        <div class="icon"><i class="fas fa-check"></i></div>
                                        Deserunt ad ipsum sint istisnası
                                    </li>
                                    <li>
                                        <div class="icon"><i class="fas fa-check"></i></div>
                                        Lorem sit occaecat ea proident istisnai
                                    </li>
                                </ul>
                            </div>
                            <a href="#" class="btn">DAHA FAZLA BİLGİ EDİN</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- about-area-end -->

        <!-- faq-area -->
        <div class="faq-area position-relative fix pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 order-0 order-lg-2">
                        <asp:Repeater ID="Repeater3" runat="server">
                                    <ItemTemplate>
                        <div class="faq-img">
                            <img src="<%#Eval("foto3")%>" alt="">
                        </div>
                           </ItemTemplate>
                                </asp:Repeater>
                    </div>
                    <div class="col-lg-6">
                        <div class="faq-wrap">
                            <div class="faq-set active">
                                <a class="active" href="#">Herhangi bir garanti sunuyor musunuz? <i class="fas fa-minus"></i></a>
                                <div class="content" style="display: block;">
                                    <p>
                                        Lorem ipsum veya Lipsum bazen bilindiği gibi baskı, grafik veya web tasarımlarının düzenlenmesinde kullanılan sahte metindir. Geçit bir bilinmeyene atfedilir.
                                    </p>
                                </div>
                            </div>



                        </div>
                    </div>
                </div>
            </div>
            <div class="faq-bg-dots" data-background="img/bg/faq_dots_bg.jpg"></div>
        </div>
        <!-- faq-area-end -->




    </main>
    <!-- main-area-end -->
</asp:Content>

