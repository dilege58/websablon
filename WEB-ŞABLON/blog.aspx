<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="blog" %>

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
                            <h2>Son Haberlerimiz</h2>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Anasayfa</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Blog</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb-area-end -->

        <!-- blog-area -->
      <section class="blog-area gray-lite-bg pt-120 pb-120">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8">
                            <asp:Repeater ID="Repeater1" runat="server"><ItemTemplate>
                            <div class="blog--post mb-40">
                                <div class="blog--post--thumb">
                                    <a href="blog-details.html"><img src="<%#Eval("haberimg")%>" alt=""></a>
                                </div>
                                <div class="blog--post--content">
                                    <div class="blog--post--tag">
                                        <span class="date"><%#Eval("habertarih")%></span>
                                    </div>
                                    <h2><a href="blog-details.html"><%#Eval("haberbaslik")%></p>
                                    <p><%#Eval("ek1")%></p>
                                </div>
                            </div>
                            </ItemTemplate></asp:Repeater>
                            
                        </div>
                        
                    </div>
                </div>
            </section>
        <!-- blog-area-end -->


    </main>
    <!-- main-area-end -->
</asp:Content>

