<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Registro.aspx.vb" Inherits="ServiceData.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" href="EstilosRegistro.css">
    <div class="container">
        <asp:Label ID="Matricula" runat="server" Text="Matricula" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtMatricula" runat="server" CssClass="textbox"></asp:TextBox>

        <asp:Label ID="Nombre" runat="server" Text="Nombre" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="textbox"></asp:TextBox>

        <asp:Label ID="Apaterno" runat="server" Text="A. Paterno" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtPaterno" runat="server" CssClass="textbox"></asp:TextBox>

        <asp:Label ID="AMaterno" runat="server" Text="A. Materno" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtMaterno" runat="server" CssClass="textbox"></asp:TextBox>

        <asp:Label ID="Carrera" runat="server" Text="Carrera" CssClass="label"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DataRegistros" DataTextField="Carrera" DataValueField="IdCarrera" CssClass="dropdown"></asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="DataRegistros" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT IdCarrera, Carrera FROM Carreras"></asp:SqlDataSource>

        <asp:Label ID="Cuatri" runat="server" Text="Cuatrimestre Actual" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtCuatri" runat="server" CssClass="textbox"></asp:TextBox>

        <asp:Label ID="Finicio" runat="server" Text="Fecha de Inicio" CssClass="label"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" CssClass="calendar"></asp:Calendar>

        <asp:Label ID="FFinal" runat="server" Text="Fecha de Termino" CssClass="label"></asp:Label>
        <asp:Calendar ID="Calendar2" runat="server" CssClass="calendar"></asp:Calendar>

        <asp:Button ID="btnIngresar" runat="server" Text="Agregar" OnClick="btnIngresar_Click" CssClass="button" />
    </div>
</asp:Content>
