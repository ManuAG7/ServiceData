Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim matricula As String = txtMatricula.Text
        If Not String.IsNullOrEmpty(matricula) Then
            ObtenerHoras(matricula)
        Else
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Por favor, ingrese una matrícula.');", True)
        End If
    End Sub

    Private Sub ObtenerHoras(matricula As String)
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString
        Dim query As String = "SELECT 
                                    SUM(DATEDIFF(HOUR, TimeIn, TimeOut)) AS HorasTotales,
                                    SUM(CASE WHEN DATEDIFF(WEEK, Date, GETDATE()) = 0 THEN DATEDIFF(HOUR, TimeIn, TimeOut) ELSE 0 END) AS HorasSemanales,
                                    SUM(CASE WHEN DATEDIFF(MONTH, Date, GETDATE()) < 2 THEN DATEDIFF(HOUR, TimeIn, TimeOut) ELSE 0 END) AS HorasBimestrales
                               FROM ServiceData
                               WHERE Matricula = @Matricula"

        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@Matricula", matricula)
                connection.Open()

                Using reader As SqlDataReader = command.ExecuteReader()
                    If reader.Read() Then
                        Label2.Text = "Horas Totales: " & reader("HorasTotales").ToString()
                        Label3.Text = "Horas Semanales: " & reader("HorasSemanales").ToString()
                        Label4.Text = "Horas Bimestrales: " & reader("HorasBimestrales").ToString()
                    Else
                        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('No se encontraron datos para la matrícula ingresada.');", True)
                    End If
                End Using
            End Using
        End Using
    End Sub


End Class