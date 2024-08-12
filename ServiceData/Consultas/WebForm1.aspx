<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="WebForm1.aspx.vb" Inherits="ServiceData.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="busqueda">
        <asp:Label ID="Label1" runat="server" Text="Matricula"></asp:Label>
        <asp:TextBox ID="txtMatricula" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
    </div>
    
        <asp:Label ID="Label2" runat="server" Text="Horas Totales"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Horas Semanales"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Horas Bimestrales"></asp:Label>
   
</asp:Content>
