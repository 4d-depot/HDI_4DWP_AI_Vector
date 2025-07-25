var $stylesheet : Object

WParea:=OBJECT Get value:C1743("WParea")

// Normal
$stylesheet:=WP Get style sheet:C1656(WParea; "Normal")
WP SET ATTRIBUTES:C1342($stylesheet; \
wk font family:K81:65; "Helvetica Neue"; \
wk text align:K81:49; wk left:K81:95; \
wk padding bottom:K81:19; "5pt")


// Title
$stylesheet:=WP Get style sheet:C1656(WParea; "Title")
If ($stylesheet=Null:C1517)
	$stylesheet:=WP New style sheet:C1650(WParea; wk type paragraph:K81:191; "Title")
End if 
WP SET ATTRIBUTES:C1342($stylesheet; \
wk font:K81:69; "Helvetica Neue"; \
wk font size:K81:66; "24pt"; \
wk font bold:K81:68; wk true:K81:174; \
wk text color:K81:64; "#363636"; \
wk text align:K81:49; wk center:K81:99; \
wk padding bottom:K81:19; "60pt")


// Title1
$stylesheet:=WP Get style sheet:C1656(WParea; "Title1")
If ($stylesheet=Null:C1517)
	$stylesheet:=WP New style sheet:C1650(WParea; wk type paragraph:K81:191; "Title1")
End if 
WP SET ATTRIBUTES:C1342($stylesheet; \
wk font:K81:69; "Helvetica Neue"; \
wk font size:K81:66; 24; \
wk text align:K81:49; wk left:K81:95; \
wk padding top:K81:18; "20pt"; \
wk padding bottom:K81:19; "10pt")


// Title2
$stylesheet:=WP Get style sheet:C1656(WParea; "Title2")
If ($stylesheet=Null:C1517)
	$stylesheet:=WP New style sheet:C1650(WParea; wk type paragraph:K81:191; "Title2")
End if 
WP SET ATTRIBUTES:C1342($stylesheet; \
wk font:K81:69; "Helvetica Neue"; \
wk font size:K81:66; 18; \
wk text align:K81:49; wk left:K81:95; \
wk padding bottom:K81:19; "10pt")


// Bullet
$stylesheet:=WP Get style sheet:C1656(WParea; "Bullet")
If ($stylesheet=Null:C1517)
	$stylesheet:=WP New style sheet:C1650(WParea; wk type paragraph:K81:191; "Bullet")
End if 
WP SET ATTRIBUTES:C1342($stylesheet; \
wk list style type:K81:55; wk circle:K81:141; \
wk margin left:K81:11; "20pt")

// Code
$stylesheet:=WP Get style sheet:C1656(WParea; "Code")
If ($stylesheet=Null:C1517)
	$stylesheet:=WP New style sheet:C1650(WParea; wk type paragraph:K81:191; "Code")
End if 
WP SET ATTRIBUTES:C1342($stylesheet; \
wk font:K81:69; "Courier New"; \
wk padding left:K81:16; "40pt")
