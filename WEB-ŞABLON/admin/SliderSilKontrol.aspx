<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="SliderSilKontrol.aspx.cs" Inherits="SliderSilKontrol" %>

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
                <asp:Repeater ID="Repeater1" runat="server">
                    <itemtemplate>
                        <div class="col-md-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h2 class="card-title" style="text-align: center; font-size: 15pt; color: #fff;">Silmek İstediğiniz Kayıt!</h2>
                                    <br />
                                    <div class="forms-sample" runat="server">
                                        <div class="form-group">
                                            <asp:Image ID="Image1" class="img-thumbnail" ImageUrl='<%# Eval("foto") %>' runat="server" />
                                        </div>
                                        <button type="submit" class="btn btn-success mr-2"><a href="SliderSil.aspx?id=<%# Eval("id") %>" style="width: 87px; height: 15px; display: block; color: #fff; text-decoration: none;">Sil</a></button>
                                        <button class="btn btn-light"><a href="Slider.aspx" style="width: 55px; height: 15px; display: block; color: #fff; text-decoration: none;">İptal</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </itemtemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>

