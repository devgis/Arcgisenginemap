VERSION 5.00
Object = "{03ED3B1E-ED1B-4A2E-8FE3-D8D1A673F5D4}#5.0#0"; "SuperMap.ocx"
Begin VB.Form Frmmap 
   Caption         =   "Frmmap"
   ClientHeight    =   4545
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6015
   LinkTopic       =   "Form1"
   ScaleHeight     =   4545
   ScaleWidth      =   6015
   StartUpPosition =   3  '窗口缺省
   Begin SuperMapLib.SuperMap SuperMap1 
      Height          =   3855
      Left            =   1320
      TabIndex        =   0
      Top             =   360
      Width           =   4335
      _Version        =   327680
      _ExtentX        =   7646
      _ExtentY        =   6800
      _StockProps     =   160
   End
   Begin SuperMapLib.SuperWorkspace SuperWorkspace1 
      Left            =   240
      Top             =   240
      _Version        =   327680
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
   End
End
Attribute VB_Name = "Frmmap"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
SuperMap1.Connect (SuperWorkspace1.Object)
Dim stralias As String
Dim nengineType As seEncodedType
Dim strdatasourcename As String
Dim objdatasource As soDataSource
Dim breadonly As Boolean
Dim objlayer As soLayer
Dim baddtohead As Boolean
Dim i As Integer
stralias = "world"
nengineType = sceSDB
strdatasourcename = "C:\my project\world.sdb"
bebreadonly = False
Set objdatasource = SuperWorkspace1.OpenDataSource(strdatasourcename, stralias, nengineType, breadonly)
If (objdatasource Is Nothing) Then
MsgBox "打开失败", vbInformation
Else
For i = 1 To objdatasource.Datasets.Count
baddtohead = True
Set objlayer = SuperMap1.Layers.AddDataset(objdatasource.Datasets.Item(i), baddtohead)
Next i
End If
SuperMap1.Refresh
Set objdatasource = Nothing
Set objlayer = Nothing
End Sub
