<%@ Page Title="Registro de horas" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Ingreso.aspx.vb" Inherits="ServiceData.Ingreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="estilos.css">

    <div class="container">
        <div class="image-container">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Service/Logos.png" Height="100px" />
        </div>
           <asp:Label ID="Label4" runat="server" Text="Registro de hora de Entrada" class="label"></asp:Label>  
        <asp:Label ID="LbInstru" runat="server" Text="Ingresa tu Matricula" class="label"></asp:Label>
        <asp:TextBox ID="txtMatricula" runat="server" OnTextChanged="txtMatricula_TextChanged" class="textbox"></asp:TextBox>
        <asp:Button ID="btnIngresar" runat="server" Text="Entrar" OnClick="btnIngresar_Click" class="button"/>
    
       <asp:Label ID="Label1" runat="server" Text="Universida Politecnica de Pachuca" class="university-label"></asp:Label>
         
       <asp:Label ID="Label3" runat="server" Text="Registro de hora de salida" class="label"></asp:Label>
       <asp:Label ID="Label2" runat="server" Text="Ingresa Matricula" class="label"></asp:Label>
        <asp:TextBox ID="txtSalida" runat="server" class="textbox"></asp:TextBox>
        <asp:Button ID="btnSalida" runat="server" Text="Salida" OnClick="btnSalida_Click" class="button"/>
          
    </div>

    <script type="text/javascript">
        function updateClock() {
            var now = new Date();
            var hours = now.getHours().toString().padStart(2, '0');
            var minutes = now.getMinutes().toString().padStart(2, '0');
            var seconds = now.getSeconds().toString().padStart(2, '0');
            document.getElementById('clock').innerText = hours + ':' + minutes + ':' + seconds;
        }

        setInterval(updateClock, 1000);
        window.onload = updateClock;
    </script>
    <div id="clock" style="font-size: 30px;"></div>
</asp:Content>
