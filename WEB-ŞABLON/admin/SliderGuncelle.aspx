<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="SliderGuncelle.aspx.cs" Inherits="SliderGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .image-input.image-input-outline .image-input-wrapper {
            border: 0px solid #1E1E2D;
            box-shadow: 0 0 0 0 rgb(0 0 0 / 8%);
        }


        @media (max-width: 575.98px) {
         
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
                <h1 class="d-flex text-dark fw-bolder my-1 fs-3">TETRA YAZILIM | E-TİCARET YÖNETİM PANELİ</h1>
                <!--end::Title-->
            </div>
            <!--end::Page title-->
            <!--begin::Actions-->
            <!--end::Actions-->
        </div>
        <div class="card mb-8">
            <div class="card-body">
                <div class="card card-flush py-4">
                    <!--begin::Card body-->
                    <div class="card-body text-center pt-0">
                        <!--begin::Image input-->
                        <div class="image-input image-input-empty image-input-outline mb-3" data-kt-image-input="true">
                            <!--begin::Preview existing avatar-->
                            <div class="image-input-wrapper w-150px">
                                <asp:Image ID="Image5" runat="server" class="image-input-wrapper slimg" Style="" />
                            </div>

                        </div>
                        <!--end::Image input-->
                        <!--begin::Description-->
                        <div class="text-muted fs-7">Set the product thumbnail image. Only *.png, *.jpg and *.jpeg image files are accepted</div>
                        <!--end::Description-->
                        <div class="input-group col-xs-12">
                            <%--<asp:Image ID="Image5" Cssclass="foto" runat="server" />--%><br />
                            <br />
                            <span class="input-group-append">
                                <asp:FileUpload ID="logo" runat="server" class="file-upload-browse btn btn-info" />
                            </span>
                        </div>
                    </div>
                    <asp:TextBox ID="txtsira" runat="server" class="form-control mb-2" PlaceHolder="Başlık..."></asp:TextBox>
                    <asp:TextBox ID="txtaciklama" runat="server" class="form-control mb-2" PlaceHolder="Açıklama..."></asp:TextBox>
                    <asp:Button ID="btnekle" class="btn btn-sm btn-light btn-active-light-primary" runat="server" OnClick="btnekle_Click" Text="Güncelle" />

                    <!--end::Card body-->
                </div>
            </div>
        </div>
    </div>

</asp:Content>

