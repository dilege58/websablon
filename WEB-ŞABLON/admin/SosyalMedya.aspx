<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="SosyalMedya.aspx.cs" Inherits="SosyalMedya" %>

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
                    <label for="exampleInputName1">İnstagram</label>
                    <asp:TextBox ID="txtinstagram" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">Facebook</label>
                    <asp:TextBox ID="txtfacebook" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">Twitter</label>
                    <asp:TextBox ID="txttwitter" runat="server" class="form-control"></asp:TextBox>
                </div>
                <asp:Label ID="Label1" Visible="false" runat="server" Text="İnstagram"></asp:Label>
                <asp:Label ID="Label2" Visible="false" runat="server" Text="Facebook"></asp:Label>
                <asp:Label ID="Label3" Visible="false" runat="server" Text="Twitter"></asp:Label>
                <asp:Button ID="btnguncelle" runat="server" class="btn btn-success mr-2" Text="Güncelle" OnClick="btnguncelle_Click" />
            </div>
        </div>
    </div>
</asp:Content>

