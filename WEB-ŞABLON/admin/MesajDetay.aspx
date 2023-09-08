<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                <div class="form-group">
                    <label for="exampleInputName1">
                        Ad Soyad: &nbsp;&nbsp;<asp:Label ID="lblisim" runat="server" CssClass="baslik"></asp:Label>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">
                        Gönderen Mail Adresi: &nbsp;&nbsp;<asp:Label ID="lblmail" runat="server" CssClass="baslik"></asp:Label>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">
                        Telefon Numarası: &nbsp;&nbsp;<asp:Label ID="lblno" runat="server" CssClass="baslik"></asp:Label>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">
                        Mesaj İçeriği: &nbsp;&nbsp;<asp:Label ID="lblmesaj" runat="server" CssClass="baslik"></asp:Label>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">
                        Mesaj Durumu: &nbsp;&nbsp;<asp:Label ID="lbldurum" runat="server" CssClass="baslik"></asp:Label>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">
                        Mesaj Durumunu Güncelle:
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-secondary dropdown-toggle">
                                        <asp:ListItem Value="-1">Seçiniz</asp:ListItem>
                                        <asp:ListItem>Okundu</asp:ListItem>
                                        <asp:ListItem>Okunmadı</asp:ListItem>
                                    </asp:DropDownList>
                </div>
                <asp:Button ID="btnekle" class="btn btn-success mr-2" runat="server" OnClick="btnekle_Click" Text="Güncelle" />
            </div>
        </div>
    </div>
</asp:Content>

