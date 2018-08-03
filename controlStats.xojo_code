#tag IOSContainerControl
Begin iOSContainerControl controlStats
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   218.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   122.0
   Begin iOSLabel lblOne
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblOne, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblOne, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblOne, 3, <Parent>, 3, False, +1.00, 4, 1, 13, , True
      AutoLayout      =   lblOne, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "1:0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   13
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel lblTwo
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblTwo, 1, lblOne, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblTwo, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblTwo, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblTwo, 4, <Parent>, 4, False, +1.00, 4, 1, -144, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "2:0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   44
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel lblThree
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblThree, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   lblThree, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblThree, 3, <Parent>, 3, False, +1.00, 4, 1, 75, , True
      AutoLayout      =   lblThree, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "3:0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   75
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel lblFour
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblFour, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   lblFour, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblFour, 3, <Parent>, 3, False, +1.00, 4, 1, 106, , True
      AutoLayout      =   lblFour, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "4:0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   106
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel lblFive
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblFive, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   lblFive, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblFive, 3, <Parent>, 3, False, +1.00, 4, 1, 137, , True
      AutoLayout      =   lblFive, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "5:0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   137
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel lblSix
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblSix, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   lblSix, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblSix, 3, <Parent>, 3, False, +1.00, 4, 1, 168, , True
      AutoLayout      =   lblSix, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "6:0"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   168
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub UpdateStats(num as integer)
		  Dim Split() As Text
		  Dim old, up As Integer
		  
		  Select Case num
		  Case 1
		    Split = lblOne.Text.Split( ":" )
		    old = Integer.FromText( Split( 1 ) )
		    up = old + 1
		    lblOne.Text = "1:" + up.ToText
		  Case 2
		    Split = lblTwo.Text.Split( ":" )
		    old = Integer.FromText( Split( 1 ) )
		    up = old + 1
		    lblTwo.Text = "2:" + up.ToText
		  Case 3
		    Split = lblThree.Text.Split( ":" )
		    old = Integer.FromText( Split( 1 ) )
		    up = old + 1
		    lblThree.Text = "3:" + up.ToText
		  Case 4
		    Split = lblFour.Text.Split( ":" )
		    old = Integer.FromText( Split( 1 ) )
		    up = old + 1
		    lblFour.Text = "4:" + up.ToText
		  Case 5
		    Split = lblFive.Text.Split( ":" )
		    old = Integer.FromText( Split( 1 ) )
		    up = old + 1
		    lblFive.Text = "5:" + up.ToText
		  Case 6
		    Split = lblSix.Text.Split( ":" )
		    old = Integer.FromText( Split( 1 ) )
		    up = old + 1
		    lblSix.Text = "6:" + up.ToText
		  End Select
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="AccessibilityHint"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		InitialValue="320"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		InitialValue="480"
		Type="Double"
	#tag EndViewProperty
#tag EndViewBehavior
