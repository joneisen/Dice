#tag Class
Protected Class Die
Inherits iosCanvas
	#tag Event
		Sub Paint(g As iOSGraphics)
		  Draw( g )
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Draw(g as iOSGraphics)
		  g.FillColor = Color.Red
		  g.FillRoundRect( 0, 0, Me.Width, Me.Height, 10, 10 )
		  //Draw dots
		  Dim dotHeight, dotWidth As Double
		  dotHeight = Me.height / 6
		  dotWidth = Me.Width / 6
		  g.FillColor = Color.White
		  Select Case mNumber
		  Case 1
		    g.FillOval( Me.Width / 2 - dotWidth / 2, Me.Height / 2 - dotWidth / 2, dotWidth, dotHeight )
		  Case 2
		    //Top left
		    g.FillOval( Me.Width / 4 - dotWidth / 2, Me.Height / 4 - dotWidth / 2, dotWidth, dotHeight )
		    //Bottom right
		    g.FillOval( Me.Width / 4 * 3 - dotWidth / 2, Me.Height / 4 * 3 - dotWidth / 2, dotWidth, dotHeight )
		  Case 3
		    //Top left
		    g.FillOval( Me.Width / 4 - dotWidth / 2, Me.Height / 4 - dotWidth / 2, dotWidth, dotHeight )
		    //Center
		    g.FillOval( Me.Width / 2 - dotWidth / 2, Me.Height / 2- dotWidth / 2, dotWidth, dotHeight )
		    //Bottom right
		    g.FillOval( Me.Width / 4 * 3 - dotWidth / 2, Me.Height / 4 * 3 - dotWidth / 2, dotWidth, dotHeight )
		  Case 4
		    //Top left
		    g.FillOval( Me.Width / 4 - dotWidth / 2, Me.Height / 4 - dotWidth / 2, dotWidth, dotHeight )
		    //Top right
		    g.FillOval( Me.Width / 4 * 3 - dotWidth / 2, Me.Height / 4 - dotWidth / 2, dotWidth, dotHeight )
		    //Bottom left
		    g.FillOval( Me.Width / 4 - dotWidth / 2, Me.Height / 4 * 3 - dotWidth / 2, dotWidth, dotHeight )
		    //Bottom right
		    g.FillOval( Me.Width / 4 * 3 - dotWidth / 2, Me.Height / 4 * 3 - dotWidth / 2, dotWidth, dotHeight )
		  Case 5
		    //Top left
		    g.FillOval( Me.Width / 4 - dotWidth / 2, Me.Height / 4 - dotWidth / 2, dotWidth, dotHeight )
		    //Top right
		    g.FillOval( Me.Width / 4 * 3 - dotWidth / 2, Me.Height / 4 - dotWidth / 2, dotWidth, dotHeight )
		    //Center
		    g.FillOval( Me.Width / 2 - dotWidth / 2, Me.Height / 2- dotWidth / 2, dotWidth, dotHeight )
		    //Bottom left
		    g.FillOval( Me.Width / 4 - dotWidth / 2, Me.Height / 4 * 3 - dotWidth / 2, dotWidth, dotHeight )
		    //Bottom right
		    g.FillOval( Me.Width / 4 * 3 - dotWidth / 2, Me.Height / 4 * 3 - dotWidth / 2, dotWidth, dotHeight )
		  Case 6
		    //Top left
		    g.FillOval( Me.Width / 4 - dotWidth / 2, Me.Height / 4 - dotWidth / 2, dotWidth, dotHeight )
		    //Top right
		    g.FillOval( Me.Width / 4 * 3 - dotWidth / 2, Me.Height / 4 - dotWidth / 2, dotWidth, dotHeight )
		    //Middle left
		    g.FillOval( Me.Width / 4 - dotWidth / 2, Me.Height / 2 - dotWidth / 2, dotWidth, dotHeight )
		    //Middle right
		    g.FillOval( Me.Width / 4 * 3 - dotWidth / 2, Me.Height / 2 - dotWidth / 2, dotWidth, dotHeight )
		    //Bottom left
		    g.FillOval( Me.Width / 4 - dotWidth / 2, Me.Height / 4 * 3 - dotWidth / 2, dotWidth, dotHeight )
		    //Bottom right
		    g.FillOval( Me.Width / 4 * 3 - dotWidth / 2, Me.Height / 4 * 3 - dotWidth / 2, dotWidth, dotHeight )
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Redraw()
		  Me.Invalidate
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mNumber As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mNumber
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mNumber = value
			End Set
		#tag EndSetter
		Number As Integer
	#tag EndComputedProperty


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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="200"
			Type="Double"
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
			Visible=true
			Group="Position"
			InitialValue="200"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Number"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
