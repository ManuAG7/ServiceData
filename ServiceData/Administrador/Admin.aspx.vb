Public Class Admin
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


    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs)
        If String.IsNullOrWhiteSpace(txtMatricula.Text) Then
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('El campo de matrícula está vacío.');", True)
        Else
            WSCRUD.Deletedatos(txtMatricula.Text)
        End If

    End Sub

    Protected Sub btnModificardata_Click(sender As Object, e As EventArgs)
        Dim selectedDate As String = Calendar1.SelectedDate.ToString("yyyy-MM-dd")
        Dim selectedDate2 As String = Calendar2.SelectedDate.ToString("yyyy-MM-dd")
        WSCRUD.updatesql(txtNombre.Text, txtPaterno.Text, txtMaterno.Text, DropDownList1.SelectedValue.ToString, txtCuatri.Text, selectedDate, selectedDate2, txtMatricula.Text)

    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs)
        txtMatricula.Text = GridView2.SelectedRow.Cells(1).Text.ToString
        txtNombre.Text = GridView2.SelectedRow.Cells(2).Text.ToString
        txtPaterno.Text = GridView2.SelectedRow.Cells(3).Text.ToString
        txtMaterno.Text = GridView2.SelectedRow.Cells(4).Text.ToString
        txtCuatri.Text = GridView2.SelectedRow.Cells(6).Text.ToString
        Dim selectedDate = GridView2.SelectedRow.Cells(7).Text.ToString
        Dim selectedDate2 = GridView2.SelectedRow.Cells(8).Text.ToString

    End Sub
End Class