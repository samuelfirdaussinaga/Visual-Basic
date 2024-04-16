VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8325
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12315
   LinkTopic       =   "Form1"
   ScaleHeight     =   8325
   ScaleWidth      =   12315
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   5520
      Top             =   1680
   End
   Begin VB.CommandButton Command2 
      Caption         =   "STOP"
      Height          =   495
      Left            =   6240
      TabIndex        =   2
      Top             =   3840
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "PLAY"
      Height          =   495
      Left            =   3360
      TabIndex        =   1
      Top             =   3840
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "SELAMAT DATANG DI SMK MTS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3360
      TabIndex        =   0
      Top             =   360
      Width           =   4695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
Label1.Left = Label1.Left - 10
If Label1.Left < 0 Then
Label1.Left = Form1.Width
End If
End Sub
