<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- main-area -->
    <main>

        <!-- slider-area -->
        <section class="slider-area">
            <div class="slider-active">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="single-slider">
                            <div class="slider-bg">
                                <img src="<%#Eval("foto")%>" style="width: 100%" />
                            </div>
                            <div class="container custom-container">
                                <div class="row">
                                    <div class="col-xl-5 col-lg-6">
                                        <div class="slider-content">
                                            <span data-animation="fadeInUp" data-delay=".3s"><%#Eval("ek1")%></span>
                                            <h2 data-animation="fadeInUp" data-delay=".6s"><%#Eval("aciklama")%></h2>
                                            <p data-animation="fadeInUp" data-delay=".9s"><%#Eval("ek2")%></p>
                                            <a href="#" class="btn" data-animation="fadeInUp" data-delay="1.2s"><span>+</span> daha fazlasını keşfedin</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>


            </div>
        </section>
        <!-- slider-area-end -->





        <!-- car-search-area -->
        <section class="car-search-area gray-bg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="car-search-wrap">
                            <div class="small-title mb-20">
                                <h4>BİR ARABA ARA</h4>
                            </div>
                            <form action="#" class="car-search-form">
                                <div class="row align-items-end">
                                    <div class="col custom-col-5">
                                        <label>ARAÇ ÜRETİCİLERİ</label>
                                        <select name="name" class="selected">
                                            <option value="">Select Model</option>
                                            <option value="">Mercedes-Benz</option>
                                            <option value="">Volkswagen</option>
                                            <option value="">Aston-Martin</option>
                                            <option value="">Lamborghini</option>
                                            <option value="">Koenigsegg</option>
                                        </select>
                                    </div>
                                    <div class="col custom-col-5">
                                        <label>EKSİK MODEL</label>
                                        <select name="name" class="selected">
                                            <option value="">Select Model</option>
                                            <option value="">Volkswagen SC20</option>
                                            <option value="">Honda CBR9</option>
                                            <option value="">Aston K35l8</option>
                                            <option value="">BMW SC20</option>
                                            <option value="">Toyota T86LM</option>
                                        </select>
                                    </div>
                                    <div class="col custom-col-5">
                                        <label>Araç Durumu</label>
                                        <select name="name" class="selected">
                                            <option value="">Select Model</option>
                                            <option value="">SORN Status</option>
                                            <option value="">Fuel Type</option>
                                            <option value="">Last Log Book</option>
                                            <option value="">MOT Expires</option>
                                            <option value="">Vehicle TAX</option>
                                        </select>
                                    </div>
                                    <div class="col custom-col-5">
                                        <label>Herhangi Bir Model</label>
                                        <select name="name" class="selected">
                                            <option value="">BMW 7 Series</option>
                                            <option value="">Mercedes-Benz</option>
                                            <option value="">Volkswagen</option>
                                            <option value="">Aston-Martin</option>
                                            <option value="">Lamborghini</option>
                                            <option value="">Koenigsegg</option>
                                        </select>
                                    </div>
                                    <div class="col custom-col-5">
                                        <button class="btn">ARAÇ SEÇ</button>
                                    </div>
                                </div>
                            </form>
                            <div class="car-search-map-icon"></div>
                            <div class="car-search-shape">
                                <img src="img/images/car_search_shape.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- car-search-area-end -->

        <!-- popular-selling-brand -->
        <section class="popular-selling-brand gray-bg pt-50 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="popular-selling-wrap">
                            <div class="popular-selling-top">
                                <div class="popular-selling-title">
                                    <h4>popüler satış ürünleri</h4>
                                </div>
                                <%--<div class="see-all-brand">
                                    <a href="#">Tüm Markaları gör</a>
                                </div>--%>
                            </div>
                            <div class="row justify-content-center">
                                <asp:Repeater ID="Repeater2" runat="server">
                                    <ItemTemplate>

                                        <div class="col-lg-3 col-md-4 col-sm-6" style="float: left;" width="150">
                                            <div class="popular-selling-items">
                                                <a href="#">
                                                    <img src="<%#Eval("img")%>"></a>
                                            </div>
                                        </div>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="popular-selling-ad-banner">
                            <a href="#">
                                <img src="img/images/popular_selling_banner.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- popular-selling-brand-end -->

        <!-- latest-cars-area -->
        <section class="latest-cars-area pt-120 pb-120">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-5 col-lg-6">
                        <div class="section-title text-center mb-35">
                            <h2 class="overlay-title">All Seller</h2>
                            <span class="sub-title">öne Çıkan Arabalarımız</span>
                            <h2 class="title">en son çıkan Arabalar</h2>
                        </div>
                        <div class="latest-car-menu-wrap">
                            <div class="latest-car-menu-active">
                                <button class="active" data-filter="*">tüm satıcı</button>
                                <button class="" data-filter=".cat-one">YENİ ARABALAR</button>
                                <button class="" data-filter=".cat-two">Kullanılmış ARABALAR</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="latest-cars-wrapper">
                    <div class="row latest-car-items-active">
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-6 grid-item grid-sizer cat-two">
                                    <div class="latest-car-item mb-60">
                                        <div class="latest-car-thumb mb-25">
                                            <a href="inventory-details.html">
                                                <img src="<%#Eval("urunimg")%>" alt="images">
                                            </a>
                                        </div>
                                        <div class="latest-car-content">
                                            <div class="latest-car-content-top">
                                                <h5><a href="inventory-details.html"><%#Eval("urunadi")%></a></h5>
                                                <span class="price"><%#Eval("ek4")%></span>
                                            </div>
                                            <p>Build Year : <span><%#Eval("ek1")%></span></p>
                                            <div class="latest-car-meta">
                                                <ul>
                                                    <li><%#Eval("ek2")%></li>
                                                    <li><%#Eval("ek5")%></li>
                                                    <li><%#Eval("ek3")%></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>


                        <%-- <div class="col-lg-4 col-md-6 grid-item grid-sizer cat-one">
                            <div class="latest-car-item mb-60">
                                <div class="latest-car-thumb mb-25">
                                    <a href="inventory-details.html">
                                        <img src="img/images/released_cars_thumb02.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-car-content">
                                    <div class="latest-car-content-top">
                                        <h5><a href="inventory-details.html">Audi New BoM 800</a></h5>
                                        <span class="price">$2900</span>
                                    </div>
                                    <p>Build Year : <span>2020</span></p>
                                    <div class="latest-car-meta">
                                        <ul>
                                            <li><i class="flaticon-settings"></i>Automatic</li>
                                            <li><i class="flaticon-gasoline-pump"></i>Diesel</li>
                                            <li><i class="flaticon-motorway"></i>7500 km</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 grid-item grid-sizer cat-two">
                            <div class="latest-car-item mb-60">
                                <div class="latest-car-thumb mb-25">
                                    <a href="inventory-details.html">
                                        <img src="img/images/released_cars_thumb03.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-car-content">
                                    <div class="latest-car-content-top">
                                        <h5><a href="inventory-details.html">Mercedez Benz Ei8</a></h5>
                                        <span class="price">$2100</span>
                                    </div>
                                    <p>Build Year : <span>2020</span></p>
                                    <div class="latest-car-meta">
                                        <ul>
                                            <li><i class="flaticon-settings"></i>Automatic</li>
                                            <li><i class="flaticon-gasoline-pump"></i>Diesel</li>
                                            <li><i class="flaticon-motorway"></i>7500 km</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 grid-item grid-sizer cat-one cat-two">
                            <div class="latest-car-item mb-60">
                                <div class="latest-car-thumb mb-25">
                                    <a href="inventory-details.html">
                                        <img src="img/images/released_cars_thumb04.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-car-content">
                                    <div class="latest-car-content-top">
                                        <h5><a href="inventory-details.html">Audi A8 Hybrid</a></h5>
                                        <span class="price">$1900</span>
                                    </div>
                                    <p>Build Year : <span>2020</span></p>
                                    <div class="latest-car-meta">
                                        <ul>
                                            <li><i class="flaticon-settings"></i>Automatic</li>
                                            <li><i class="flaticon-gasoline-pump"></i>Diesel</li>
                                            <li><i class="flaticon-motorway"></i>7500 km</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 grid-item grid-sizer cat-one">
                            <div class="latest-car-item mb-60">
                                <div class="latest-car-thumb mb-25">
                                    <a href="inventory-details.html">
                                        <img src="img/images/released_cars_thumb05.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-car-content">
                                    <div class="latest-car-content-top">
                                        <h5><a href="inventory-details.html">Audi New BoM 800</a></h5>
                                        <span class="price">$1700</span>
                                    </div>
                                    <p>Build Year : <span>2020</span></p>
                                    <div class="latest-car-meta">
                                        <ul>
                                            <li><i class="flaticon-settings"></i>Automatic</li>
                                            <li><i class="flaticon-gasoline-pump"></i>Diesel</li>
                                            <li><i class="flaticon-motorway"></i>7500 km</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 grid-item grid-sizer cat-one cat-two">
                            <div class="latest-car-item mb-60">
                                <div class="latest-car-thumb mb-25">
                                    <a href="inventory-details.html">
                                        <img src="img/images/released_cars_thumb06.jpg" alt="">
                                    </a>
                                </div>
                                <div class="latest-car-content">
                                    <div class="latest-car-content-top">
                                        <h5><a href="inventory-details.html">Audi New BoM 800</a></h5>
                                        <span class="price">$1200</span>
                                    </div>
                                    <p>Build Year : <span>2020</span></p>
                                    <div class="latest-car-meta">
                                        <ul>
                                            <li><i class="flaticon-settings"></i>Automatic</li>
                                            <li><i class="flaticon-gasoline-pump"></i>Diesel</li>
                                            <li><i class="flaticon-motorway"></i>7500 km</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="latest-car-btn text-center mt-10">
                                <a href="#" class="btn">TÜM ARABALARI GÖSTER</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- latest-cars-area-end -->

        <%--<!-- fact-area -->
        <section class="fact-area fact-bg pt-120 pb-70 jarallax parallax-img" data-background="img/bg/fact_bg.jpg">
            <div class="fact-area-title">Find your Perfect Car <span class="left"></span><span class="right"></span></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="fact-item mb-50">
                            <div class="fact-icon">
                                <i class="flaticon-car-3"></i>
                            </div>
                            <div class="fact-content">
                                <h3><span class="odometer" data-count="2900"></span>+</h3>
                                <p>NEW CARS IN STOCK</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="fact-item mb-50">
                            <div class="fact-icon">
                                <i class="flaticon-service-1"></i>
                            </div>
                            <div class="fact-content">
                                <h3><span class="odometer" data-count="3400"></span>+</h3>
                                <p>USED CARS IN STOCK</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="fact-item mb-50">
                            <div class="fact-icon">
                                <i class="flaticon-gears"></i>
                            </div>
                            <div class="fact-content">
                                <h3><span class="odometer" data-count="1200"></span>+</h3>
                                <p>SERVICE CENTERS</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="fact-item mb-50">
                            <div class="fact-icon">
                                <i class="flaticon-rocket"></i>
                            </div>
                            <div class="fact-content">
                                <h3><span class="odometer" data-count="34"></span>K</h3>
                                <p>HAPPY CLIENTS</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- fact-area-end -->--%>

        <%--  <!-- exclusive-featured-area -->
            <section class="exclusive-featured-area pt-120 pb-120">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-6 col-lg-7">
                            <div class="section-title text-center mb-70">
                                <h2 class="overlay-title">Our Services</h2>
                                <span class="sub-title">our service Cars</span>
                                <h2 class="title">Exclusive Car Featured</h2>
                                <div class="line"><img src="img/images/title_line.png" alt=""></div>
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-center align-items-xl-start">
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="exc-featured-item">
                                <div class="icon">
                                    <i class="flaticon-belt"></i>
                                </div>
                                <div class="content">
                                    <h5>SUPER FAST car</h5>
                                    <p>Placlder text commonly used detrate theyjlos visual form amet, consectetur ading elitmod tempor used.</p>
                                </div>
                            </div>
                            <div class="exc-featured-item">
                                <div class="icon">
                                    <i class="flaticon-piston"></i>
                                </div>
                                <div class="content">
                                    <h5>dealership points</h5>
                                    <p>Placlder text commonly used detrate theyjlos visual form amet, consectetur ading elitmod tempor used.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-4 d-none d-lg-block">
                            <div class="exc-featured-img">
                                <img src="img/images/exc_featured_img.png" alt="">
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="exc-featured-item">
                                <div class="icon">
                                    <i class="flaticon-fan"></i>
                                </div>
                                <div class="content">
                                    <h5>SUPER FAST car</h5>
                                    <p>Placlder text commonly used detrate theyjlos visual form amet, consectetur ading elitmod tempor used.</p>
                                </div>
                            </div>
                            <div class="exc-featured-item">
                                <div class="icon">
                                    <i class="flaticon-jerrycan"></i>
                                </div>
                                <div class="content">
                                    <h5>dealership points</h5>
                                    <p>Placlder text commonly used detrate theyjlos visual form amet, consectetur ading elitmod tempor used.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- exclusive-featured-area-end -->--%>

        <%-- <!-- team-area -->
        <section class="team-area team-bg pt-120 pb-120" data-background="img/bg/team_bg.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-lg-7">
                        <div class="section-title text-center white-title mb-70">
                            <span class="sub-title">our expert team</span>
                            <h2 class="title">Our Customer Advisor</h2>
                            <div class="line">
                                <img src="img/images/title_line.png" alt=""></div>
                        </div>
                    </div>
                </div>
                <div class="row team-active">
                    <div class="col-xl-3">
                        <div class="team-item">
                            <div class="team-thumb">
                                <img src="img/team/team_thumb01.jpg" alt="">
                            </div>
                            <div class="team-social">
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                </ul>
                            </div>
                            <div class="team-content">
                                <h5>dealership points</h5>
                                <a href="tel:123456789" class="phone">(123) 345-6789</a>
                                <a href="/cdn-cgi/l/email-protection#4f2a222623360f392a27262c2e3b272a222a612c2022" class="mail"><span class="__cf_email__" data-cfemail="47222a2e2b3e0731222f2e2426332f222a226924282a">[email&#160;protected]</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <div class="team-item">
                            <div class="team-thumb">
                                <img src="img/team/team_thumb02.jpg" alt="">
                            </div>
                            <div class="team-social">
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                </ul>
                            </div>
                            <div class="team-content">
                                <h5>lora williams</h5>
                                <a href="tel:123456789" class="phone">(123) 345-6789</a>
                                <a href="/cdn-cgi/l/email-protection#71141c181d08310714191812100519141c145f121e1c" class="mail"><span class="__cf_email__" data-cfemail="7b1e161217023b0d1e1312181a0f131e161e55181416">[email&#160;protected]</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <div class="team-item">
                            <div class="team-thumb">
                                <img src="img/team/team_thumb03.jpg" alt="">
                            </div>
                            <div class="team-social">
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                </ul>
                            </div>
                            <div class="team-content">
                                <h5>gareth baleson</h5>
                                <a href="tel:123456789" class="phone">(123) 345-6789</a>
                                <a href="/cdn-cgi/l/email-protection#6b0e060207122b1d0e0302080a1f030e060e45080406" class="mail"><span class="__cf_email__" data-cfemail="0d68606461744d7b6865646e6c7965686068236e6260">[email&#160;protected]</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <div class="team-item">
                            <div class="team-thumb">
                                <img src="img/team/team_thumb04.jpg" alt="">
                            </div>
                            <div class="team-social">
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                </ul>
                            </div>
                            <div class="team-content">
                                <h5>dealership points</h5>
                                <a href="tel:123456789" class="phone">(123) 345-6789</a>
                                <a href="/cdn-cgi/l/email-protection#37525a5e5b4e7741525f5e5456435f525a521954585a" class="mail"><span class="__cf_email__" data-cfemail="8ce9e1e5e0f5ccfae9e4e5efedf8e4e9e1e9a2efe3e1">[email&#160;protected]</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <div class="team-item">
                            <div class="team-thumb">
                                <img src="img/team/team_thumb02.jpg" alt="">
                            </div>
                            <div class="team-social">
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                </ul>
                            </div>
                            <div class="team-content">
                                <h5>Tenosy Hong</h5>
                                <a href="tel:123456789" class="phone">(123) 345-6789</a>
                                <a href="/cdn-cgi/l/email-protection#22474f4b4e5b6254474a4b4143564a474f470c414d4f" class="mail"><span class="__cf_email__" data-cfemail="40252d292c39003625282923213428252d256e232f2d">[email&#160;protected]</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- team-area-end -->--%>

        <%--   <!-- car-category-area -->
        <section class="car-category-area pt-120 pb-120">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-lg-7">
                        <div class="section-title text-center mb-70">
                            <h2 class="overlay-title">Browse cars</h2>
                            <span class="sub-title">categories cars</span>
                            <h2 class="title">Browse by Type cars</h2>
                            <div class="line">
                                <img src="img/images/title_line.png" alt=""></div>
                        </div>
                    </div>
                </div>
                <div class="row car-category-active">
                    <div class="col">
                        <div class="car-cat-item">
                            <a href="#">
                                <img src="img/images/car_cat01.png" alt="">
                                <span>Hybrid i7</span>
                            </a>
                        </div>
                    </div>
                    <div class="col">
                        <div class="car-cat-item">
                            <a href="#">
                                <img src="img/images/car_cat02.png" alt="">
                                <span>Jaguar W7</span>
                            </a>
                        </div>
                    </div>
                    <div class="col">
                        <div class="car-cat-item">
                            <a href="#">
                                <img src="img/images/car_cat03.png" alt="">
                                <span>Hybrid 91H6</span>
                            </a>
                        </div>
                    </div>
                    <div class="col">
                        <div class="car-cat-item">
                            <a href="#">
                                <img src="img/images/car_cat04.png" alt="">
                                <span>Toyota Aqua</span>
                            </a>
                        </div>
                    </div>
                    <div class="col">
                        <div class="car-cat-item">
                            <a href="#">
                                <img src="img/images/car_cat05.png" alt="">
                                <span>Sedan 800</span>
                            </a>
                        </div>
                    </div>
                    <div class="col">
                        <div class="car-cat-item">
                            <a href="#">
                                <img src="img/images/car_cat06.png" alt="">
                                <span>Toyota 7G9</span>
                            </a>
                        </div>
                    </div>
                    <div class="col">
                        <div class="car-cat-item">
                            <a href="#">
                                <img src="img/images/car_cat04.png" alt="">
                                <span>Lamborghini</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- car-category-area-end -->--%>

        <%--   <!-- app-download-area -->
        <section class="app-download-area pb-120">
            <div class="container">
                <div class="app-download-bg" data-background="img/bg/app_download_bg.png">
                    <div class="row">
                        <div class="col-xl-6 col-lg-7">
                            <div class="app-download-title">
                                <span class="sub-title">download app</span>
                                <h2 class="title">Download Our Free App Car Service</h2>
                                <p>Placlder text commonly used detrate visual</p>
                                <div class="download-btn">
                                    <a href="#" class="app-btn">
                                        <img src="img/images/download_btn01.png" alt=""></a>
                                    <a href="#" class="google-btn">
                                        <img src="img/images/download_btn02.png" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="app-screenshot-img">
                        <img src="img/images/app_shot.png" alt="">
                    </div>
                </div>
            </div>
        </section>
        <!-- app-download-area-end -->--%>

        <%--<!-- footer-brand-area -->
            <div class="footer-brand-area">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-4 col-md-6 order-2 order-md-0">
                            <div class="footer-logo">
                                <a href="index.html"><img src="img/logo/w_logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-6">
                            <div class="row footer-brand-active">
                                <div class="col">
                                    <div class="footer-brand-item">
                                        <a href="#"><img src="img/brand/footer_brand01.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="footer-brand-item">
                                        <a href="#"><img src="img/brand/footer_brand02.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="footer-brand-item">
                                        <a href="#"><img src="img/brand/footer_brand03.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="footer-brand-item">
                                        <a href="#"><img src="img/brand/footer_brand04.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="footer-brand-item">
                                        <a href="#"><img src="img/brand/footer_brand05.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="footer-brand-item">
                                        <a href="#"><img src="img/brand/footer_brand03.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer-brand-area-end -->--%>
    </main>
    <!-- main-area-end -->




</asp:Content>

