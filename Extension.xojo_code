#tag Module
Protected Module Extension
	#tag Method, Flags = &h0
		Function InStrCount(extends pSource as String, pChar As String) As Integer
		  
		  Dim lPos As Integer = pSource.InStr(pChar)
		  Dim lCounter As Integer = 0
		  
		  If lPos > 0 Then
		    Dim NewSource As String = pSource.Right(pSource.Len-lPos)
		    
		    lCounter = 1 + NewSource.InStrCount(pChar)
		  End If
		  
		  Return lCounter
		End Function
	#tag EndMethod


	#tag ViewBehavior
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
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
