<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Çelbira | TETRA YAZILIM |YÖNETİM PANELİ</title>
    <meta charset="utf-8">
    <meta name="description" content="TETRA YAZILIM |Çelbira YÖNETİM PANELİ">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Çelbira | TETRA YAZILIM | YÖNETİM PANELİ">
    <link rel="shortcut icon" href="assets/media/logos/favicon.ico">
    <!--begin::Fonts-->
    <link rel="stylesheet" href="css.css?family=Poppins:300,400,500,600,700">
    <!--end::Fonts-->
    <!--begin::Page Vendor Stylesheets(used by this page)-->
    <link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css">
    <link href="assets/plugins/custom/vis-timeline/vis-timeline.bundle.css" rel="stylesheet" type="text/css">
    <!--end::Page Vendor Stylesheets-->
    <!--begin::Global Stylesheets Bundle(used by all pages)-->
    <link href="assets/plugins/global/plugins.dark.bundle.css" rel="stylesheet" type="text/css">
    <link href="assets/css/style.dark.bundle.css" rel="stylesheet" type="text/css">
</head>
<body id="kt_body" class="dark-mode">
    <form id="form1" runat="server">
        <div class="d-flex flex-column flex-root">
            <!--begin::Authentication - Sign-in -->
            <div class="d-flex flex-column flex-lg-row flex-column-fluid">
                <!--begin::Aside-->
                <div class="d-flex flex-column flex-lg-row-auto w-xl-600px positon-xl-relative" style="background-color: #1E1E2D">
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-column position-xl-fixed top-0 bottom-0 w-xl-600px scroll-y">
                        <!--begin::Content-->
                        <div class="d-flex flex-row-fluid flex-column text-center p-10 pt-lg-20">
                            <!--begin::Logo-->
                            <a href="#!" class="py-9 mb-5">
                                <img alt="Logo" src="images/Celbira.png"  width="300">
                            </a>
                          
                            <!--end::Logo-->
                            <!--begin::Title-->
                            <h1 class="fw-bolder fs-2qx pb-5 pb-md-10" style="color: #AD172B;">Çelbira YÖNETİM PANELİ</h1>
                            <!--end::Title-->
                        </div>
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Aside-->
                <!--begin::Body-->
                <div class="d-flex flex-column flex-lg-row-fluid py-10">
                    <!--begin::Content-->
                    <div class="d-flex flex-center flex-column flex-column-fluid">
                        <!--begin::Wrapper-->
                        <div class="w-lg-500px p-10 p-lg-15 mx-auto">
                            <!--begin::Form-->
                            <div class="form w-100 fv-plugins-bootstrap5 fv-plugins-framework" novalidate="novalidate" id="kt_sign_in_form" data-kt-redirect-url="/metronic8/demo14/../demo14/dark/index.html" action="#">
                                <!--begin::Heading-->
                                <div class="text-center mb-10">
                                    <!--begin::Title-->
                                    <h1 class="text-dark mb-3">TETRA TASARIM & YAZILIM | YÖNETİM PANELİ</h1>
                                    <!--end::Title-->
                                    <!--begin::Link-->
                                    <div class="text-gray-400 fw-bold fs-4">
                                       Çelbira YÖNETİM PANELİ
                                    </div>
                                    <!--end::Link-->
                                </div>
                                <!--begin::Heading-->
                                <!--begin::Input group-->
                                <div class="fv-row mb-10 fv-plugins-icon-container" data-validate="Kullanıcı Adınızı Girin!">
                                    <!--begin::Label-->
                                    <label class="form-label fs-6 fw-bolder text-dark">Kullanıcı Adı</label>
                                    <!--end::Label-->
                                    <!--begin::Input-->
                                    <asp:TextBox ID="txtkullanici" runat="server" class="form-control form-control-lg form-control-solid" autocomplete="off" placeholder="Kullanıcı Adınızı Giriniz"></asp:TextBox>
                                    <!--end::Input-->
                                    <div class="fv-plugins-message-container invalid-feedback"></div>
                                </div>
                                <!--end::Input group-->
                                <!--begin::Input group-->
                                <div class="fv-row mb-10 fv-plugins-icon-container" data-validate="Şifrenizi Girin!">
                                    <!--begin::Wrapper-->
                                    <div class="d-flex flex-stack mb-2">
                                        <!--begin::Label-->
                                        <label class="form-label fw-bolder text-dark fs-6 mb-0">Şifre</label>
                                        <!--end::Label-->
                                    </div>
                                    <!--end::Wrapper-->
                                    <!--begin::Input-->
                                    <asp:TextBox ID="txtsifre" class="form-control form-control-lg form-control-solid" autocomplete="off" TextMode="Password" runat="server" placeholder="Şifrenizi Giriniz"></asp:TextBox>
                                    <!--end::Input-->
                                    <div class="fv-plugins-message-container invalid-feedback"></div>
                                </div>
                                <!--end::Input group-->

                                <div class="text-center">
                                    <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-primary w-100 mb-5" OnClick="Button1_Click" Text="Giriş" /> 
                                    <asp:Label ID="Label3" runat="server" CssClass="hata" Visible="false" Text="Kullanıcı Adı veya Şifre Hatalı. Lütfen Tekrar Deneyiniz."></asp:Label>
								</div>
                            </div>
                            <!--end::Form-->
                        </div>
                        <!--end::Wrapper-->
                    </div>
                    <!--end::Content-->
                </div>
                <!--end::Body-->
            </div>
            <!--end::Authentication - Sign-in-->
        </div>
        <!--begin::Global Javascript Bundle(used by all pages)-->
        <script src="assets/plugins/global/plugins.bundle.js"></script>
        <script src="assets/js/scripts.bundle.js"></script>
        <!--end::Global Javascript Bundle-->
        <!--begin::Page Vendors Javascript(used by this page)-->
        <script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
        <script src="assets/plugins/custom/vis-timeline/vis-timeline.bundle.js"></script>
        <!--end::Page Vendors Javascript-->
        <!--begin::Page Custom Javascript(used by this page)-->
        <script src="assets/js/widgets.bundle.js"></script>
        <script src="assets/js/custom/widgets.js"></script>
        <script src="assets/js/custom/apps/chat/chat.js"></script>
        <script src="assets/js/custom/intro.js"></script>
        <script src="assets/js/custom/utilities/modals/users-search.js"></script>
        <!--end::Page Custom Javascript-->
        <!--end::Javascript-->
    </form>
</body>
</html>
