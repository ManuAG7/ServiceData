<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Admin.aspx.vb" Inherits="ServiceData.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="EstilosAdmin.css">
    <div class="container">
       
        <div class="gridview-container">
            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource3" CssClass="gridview" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button"></asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#2461BF"></EditRowStyle>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>
                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>
                <RowStyle BackColor="#EFF3FB"></RowStyle>
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>
                <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>
                <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>
                <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>
                <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
            </asp:GridView>
        </div>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Name, PLastName, TimeIn, TimeOut, Date FROM ViewData"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Matricula, Name, PLastName, MLastName, IdCarrera, Cuatrimestre, FechaInicio, FechaFin FROM StudentData"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource2"></asp:SqlDataSource>
        
        <div class="form-container hidden">
            <div class="form-group">
                <asp:Label ID="Matricula" runat="server" Text="Matricula" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtMatricula" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Nombre" runat="server" Text="Nombre" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Apaterno" runat="server" Text="A. Paterno" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtPaterno" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="AMaterno" runat="server" Text="A. Materno" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtMaterno" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
           <div class="form-group">
                <asp:Label ID="Carrera" runat="server" Text="Carrera" CssClass="label"></asp:Label>
                 <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DataRegistros" DataTextField="Carrera" DataValueField="IdCarrera" CssClass="dropdown"></asp:DropDownList>
                 <asp:SqlDataSource runat="server" ID="DataRegistros" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT IdCarrera, Carrera FROM Carreras"></asp:SqlDataSource>

                </div>

            <div class="form-group">
                <asp:Label ID="Cuatri" runat="server" Text="Cuatrimestre Actual" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtCuatri" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Finicio" runat="server" Text="Fecha de Inicio" CssClass="label"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server" CssClass="calendar"></asp:Calendar>
            </div>
            <div class="form-group">
                <asp:Label ID="FFinal" runat="server" Text="Fecha de Termino" CssClass="label"></asp:Label>
                <asp:Calendar ID="Calendar2" runat="server" CssClass="calendar"></asp:Calendar>
            </div>

        <div>
                <asp:Button ID="btnIngresar" runat="server" Text="Agregar" OnClick="btnIngresar_Click" CssClass="button hidden" />
            <br />
                <asp:Button ID="btnModificardata" runat="server" Text="Modificar" OnClick="btnModificardata_Click" CssClass="button hidden" />
            <br />
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CssClass="button" />
            <br />
        </div>
        </div>
    </div>
</asp:Content>
