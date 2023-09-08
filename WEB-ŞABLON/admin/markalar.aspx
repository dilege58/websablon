<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="markalar.aspx.cs" Inherits="admin_markalar" %>

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
                <div class="forms-sample" runat="server">
                    <div class="form-group">
                        <label for="exampleInputName1">Marka</label><br />
                        <asp:TextBox ID="txtmarka" runat="server" class="form-control mb-2" PlaceHolder="Marka..."></asp:TextBox>
                    </div>
                    <div class="form-group mt-5">
                        <label for="exampleInputName1">Başlık</label><br />
                        <asp:TextBox ID="txtbaslik" runat="server" class="form-control mb-2" PlaceHolder="Başlık..."></asp:TextBox>
                    </div>
                    <div class="form-group mt-5">
                        <label for="exampleInputName1">Konu</label><br />
                        <asp:TextBox ID="txtkonu" runat="server" class="form-control mb-2" PlaceHolder="Konu..."></asp:TextBox>
                    </div>
                </div>
                <div class="form-group mt-5">
                    <label for="exampleInputName1">Tarih</label><br />
                    <asp:TextBox ID="txttarih" runat="server" class="form-control mb-2" PlaceHolder="Tarh..."></asp:TextBox>
                </div>
                <div class="form-group mt-5">
                    <label for="exampleInputName1">Pdf</label>
                    <textarea class="ckeditor" runat="server" validaterequestmode="Disabled" id="txtpdf"></textarea>
                </div>
                <asp:Button ID="btnguncelle" runat="server" class="btn btn-success mr-2 mt-5" Text="Güncelle" OnClick="btnguncelle_Click" />

               
            </div>
        </div>
    </div>

    
</asp:Content>

