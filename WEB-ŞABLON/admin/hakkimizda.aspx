<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="hakkimizda.aspx.cs" Inherits="hakkimizda" %>

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
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Başlık</label><br />
                        <asp:TextBox ID="txtbaslik" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group mt-5">
                        <label for="exampleInputName1">Hakkımızda Yazısı</label>
                        <textarea class="ckeditor" runat="server" validaterequestmode="Disabled" id="ckcontent1"></textarea>
                    </div>
                 
                   
                    <div class="form-group mt-5">
                        <label>1.Fotoğraf Güncelle</label>
                        <div class="input-group col-xs-12">
                            <asp:Image ID="Image1" CssClass="foto" runat="server" Width="100%" />
                            <br />
                            <br />
                            <span class="input-group-append">
                                <asp:FileUpload ID="FileUpload1" runat="server" class="file-upload-browse btn btn-info" />
                            </span>
                        </div>
                    </div>
                    
                    <asp:Button ID="btnguncelle" runat="server" class="btn btn-success mr-2 mt-5" Text="Güncelle" OnClick="btnguncelle_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

