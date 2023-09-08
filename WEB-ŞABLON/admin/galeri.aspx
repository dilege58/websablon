<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="galeri.aspx.cs" Inherits="admin_galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .symbol.symbol-60px.symbol-2by3 .symbol-label {
            height: 15rem;
            width: 30rem;
        }

        @media (max-width: 575.98px) {
            .slmb {
                display: block !important;
            }

            .slbutton {
                justify-content: center !important;
                margin-top: 1rem;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="d-flex flex-column flex-column-fluid container-fluid">
        <!--begin::Toolbar-->
        <div class="toolbar mb-5 mb-lg-7" id="kt_toolbar">
            <!--begin::Page title-->
            <div class="page-title d-flex flex-column me-3">
                <!--begin::Title-->
                <h1 class="d-flex text-dark fw-bolder my-1 fs-3">TETRA YAZILIM |  YÖNETİM PANELİ</h1>
                <!--end::Title-->
            </div>
            <!--end::Page title-->
            <!--begin::Actions-->
            <!--end::Actions-->
        </div>
        <div class="card mb-8">
            <div class="card-body">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="d-flex align-items-sm-center mb-7 slmb">
                            <!--begin::Symbol-->
                            <div class="symbol symbol-60px symbol-2by3 me-4">
                                <div class="symbol-label" style="background-image: url('<%# Eval("img") %>');"></div>
                            </div>
                            <!--end::Symbol-->
                            <!--begin::Title-->
                            <div class="d-flex flex-row-fluid flex-wrap align-items-center slbutton" style="justify-content: end;">
                                    <a href="galerigüncelle.aspx?id=<%# Eval("id") %>" class="btn btn-sm btn-light btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">Fotoğrafı Değiştir </a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="galerisil.aspx?id=<%# Eval("id") %>" class="btn btn-sm btn-light btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">Fotoğrafı Sil </a>
                            </div>
                            <!--end::Title-->
                        </div>
                        <hr />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>

