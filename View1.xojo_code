#tag IOSView
Begin iosView View1
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin Die Die1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Die1, 8, , 0, False, +1.00, 4, 1, 125, , True
      AutoLayout      =   Die1, 1, , 0, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Die1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 56, , True
      AutoLayout      =   Die1, 10, <Parent>, 10, False, +1.00, 4, 1, -149, , True
      AutoLayout      =   Die1, 7, , 0, False, +1.00, 4, 1, 125, , True
      Height          =   125.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      Top             =   28
      Visible         =   True
      Width           =   125.0
   End
   Begin iOSButton btnRoll
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnRoll, 9, <Parent>, 9, False, +1.00, 4, 1, -2, , True
      AutoLayout      =   btnRoll, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btnRoll, 3, Die2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btnRoll, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Roll"
      Enabled         =   True
      Height          =   30.0
      Left            =   108
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   161
      Visible         =   True
      Width           =   100.0
   End
   Begin Die Die2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Die2, 8, , 0, False, +1.00, 4, 1, 125, , True
      AutoLayout      =   Die2, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Die2, 3, Die1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Die2, 7, , 0, False, +1.00, 4, 1, 125, , True
      Height          =   125.0
      Left            =   175
      LockedInPosition=   False
      Number          =   0
      Scope           =   2
      Top             =   28
      Visible         =   True
      Width           =   125.0
   End
   Begin iOSButton btnHistory
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnHistory, 1, Die2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnHistory, 7, , 0, False, +1.00, 4, 1, 137, , True
      AutoLayout      =   btnHistory, 3, btnRoll, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btnHistory, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Turn on History"
      Enabled         =   True
      Height          =   30.0
      Left            =   175
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   199
      Visible         =   True
      Width           =   137.0
   End
   Begin controlStats controlStats1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   controlStats1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   controlStats1, 7, , 0, False, +1.00, 4, 1, 122, , True
      AutoLayout      =   controlStats1, 8, , 0, False, +1.00, 4, 1, 218, , True
      AutoLayout      =   controlStats1, 3, , 0, False, +1.00, 4, 1, 249, , True
      Height          =   218.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Top             =   249
      Visible         =   True
      Width           =   122.0
   End
   Begin iOSTable tblHistory
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   tblHistory, 1, controlStats1, 1, False, +1.00, 4, 1, 153, , True
      AutoLayout      =   tblHistory, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   tblHistory, 3, controlStats1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   tblHistory, 8, , 0, False, +1.00, 4, 1, 232, , True
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   232.0
      Left            =   153
      LockedInPosition=   False
      Scope           =   2
      SectionCount    =   0
      Top             =   249
      Visible         =   False
      Width           =   167.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub Roll()
		  Dim num1, num2 As Integer
		  
		  num1 = Xojo.Math.RandomInt( 1, 6 )
		  num2 = Xojo.Math.RandomInt( 1, 6 )
		  
		  die1.Number = num1
		  die2.Number = num2
		  
		  die1.Redraw
		  die2.Redraw
		  
		  If Me.History Then
		    
		    Dim cell As iOSTableCellData = tblHistory.CreateCustomCell( GetTypeInfo( cellHistory ) )
		    Dim cellData As cellHistory = cellHistory( cell.Control )
		    cellData.Build( num1, num2 )
		    
		    If tblHistory.SectionCount < 1 Then
		      Dim i As Integer = tblHistory.AddSection
		    End If
		    
		    tblHistory.InsertRow( 0, 0, cell )
		    
		  End If
		  
		  controlStats1.UpdateStats( num1 )
		  controlStats1.UpdateStats( num2 )
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private History As Boolean = False
	#tag EndProperty


#tag EndWindowCode

#tag Events btnRoll
	#tag Event
		Sub Action()
		  Roll
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnHistory
	#tag Event
		Sub Action()
		  Self.History = True
		  
		  tblHistory.Visible = True
		  
		  tblHistory.RemoveAll
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
