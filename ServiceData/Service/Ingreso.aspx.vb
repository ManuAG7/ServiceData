Public Class Ingreso
    Inherits System.Web.UI.Page
    Dim WSCRUD As New WS.WSCRUDSoapClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs)
        If String.IsNullOrWhiteSpace(txtSalida.Text) Then
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('El campo de matrícula está vacío.');", True)
        Else
            WSCRUD.Salida(txtSalida.Text)
        End If
    End Sub

    Protected Sub btnSalida_Click(sender As Object, e As EventArgs)
        If String.IsNullOrWhiteSpace(txtMatricula.Text) Then
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('El campo de matrícula está vacío.');", True)
        Else
            WSCRUD.Entrada(txtMatricula.Text)
        End If
    End Sub

    Protected Sub txtMatricula_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)

    End Sub
End Class