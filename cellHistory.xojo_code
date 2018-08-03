#tag IOSContainerControl
Begin iOSCustomTableCell cellHistory
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Height          =   64.0
   Left            =   0.0
   Top             =   0.0
   Visible         =   True
   Width           =   259.0
   Begin Die Die1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Die1, 9, <Parent>, 9, False, +1.00, 4, 1, -49, , True
      AutoLayout      =   Die1, 7, , 0, False, +1.00, 4, 1, 40, , True
      AutoLayout      =   Die1, 8, , 0, False, +1.00, 4, 1, 40, , True
      AutoLayout      =   Die1, 10, <Parent>, 10, False, +1.00, 4, 1, 0, , True
      Height          =   40.0
      Left            =   60
      LockedInPosition=   False
      Number          =   0
      Scope           =   2
      Top             =   12
      Visible         =   True
      Width           =   40.0
   End
   Begin Die Die2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Die2, 9, <Parent>, 9, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   Die2, 7, , 0, False, +1.00, 4, 1, 40, , True
      AutoLayout      =   Die2, 3, <Parent>, 3, False, +1.00, 4, 1, 12, , True
      AutoLayout      =   Die2, 8, , 0, False, +1.00, 4, 1, 40, , True
      Height          =   40.0
      Left            =   159
      LockedInPosition=   False
      Number          =   0
      Scope           =   2
      Top             =   12
      Visible         =   True
      Width           =   40.0
   End
End
#tag EndIOSContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Build(num1 as integer, num2 as integer)
		  Die1.Number = num1
		  Die2.Number = num2
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
