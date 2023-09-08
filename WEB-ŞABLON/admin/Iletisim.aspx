<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

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
                        <label for="exampleInputName1">Telefon</label><br />
                        <asp:TextBox ID="txtno" runat="server" class="form-control mb-2" PlaceHolder="Telefon..."></asp:TextBox>
                    </div>
                    <div class="form-group mt-5">
                        <label for="exampleInputName1">Mail</label><br />
                        <asp:TextBox ID="txtmail" runat="server" class="form-control mb-2" PlaceHolder="Mail..."></asp:TextBox>
                    </div> <div class="form-group mt-5">
                        <label for="exampleInputName1">Mail</label><br />
                        <asp:TextBox ID="txtcalisma" runat="server" class="form-control mb-2" PlaceHolder="Mail..."></asp:TextBox>
                    </div>
                    <div class="form-group mt-5">
                        <label for="exampleInputName1">Adres</label>
                        <textarea class="ckeditor" runat="server" validaterequestmode="Disabled" id="txtadres"></textarea>
                    </div>
                     
                    <asp:Button ID="btnguncelle" runat="server" class="btn btn-success mr-2 mt-5" Text="Güncelle" OnClick="btnguncelle_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

