Public Class Registro
    Inherits System.Web.UI.Page
    Dim WSCRUD As New WS.WSCRUDSoapClient


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs)
        Dim selectedDate As String = Calendar1.SelectedDate.ToString("yyyy-MM-dd")
        Dim selectedDate2 As String = Calendar2.SelectedDate.ToString("yyyy-MM-dd")
        Dim v = WSCRUD.registar(txtMatricula.Text, txtNombre.Text, txtPaterno.Text, txtMaterno.Text, DropDownList1.SelectedValue.ToString, txtCuatri.Text, selectedDate, selectedDate2)
        borrarTXT()
    End Sub

    Public Function borrarTXT()
        txtMatricula.Text = ""
        txtNombre.Text = ""
        txtPaterno.Text = ""
        txtMaterno.Text = ""
        txtCuatri.Text = ""
    End Function
End Class