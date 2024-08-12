﻿<%@ Page Title="Comprobar número de teléfono" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="VerifyPhoneNumber.aspx.vb" Inherits="ServiceData.VerifyPhoneNumber" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>
        <div>
            <h4>Escribir el código de verificación</h4>
            <hr />
            <asp:HiddenField runat="server" ID="PhoneNumber" />
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="row">
                <asp:Label runat="server" AssociatedControlID="Code" CssClass="col-md-2 col-form-label">Código</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Code" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Code"
                        CssClass="text-danger" ErrorMessage="El campo Código es obligatorio." />
                </div>
            </div>
            <div class="row">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" OnClick="Code_Click"
                        Text="Enviar" CssClass="btn btn-outline-dark" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>