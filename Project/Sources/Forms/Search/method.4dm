Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.trace:=False:C215
		
		var $prompts:=ds:C1482.Prompts.all().toCollection()
		Form:C1466.prompts:={values: $prompts.extract("Description"); index: 0}
		
		Form:C1466.documents:=cs:C1710.VectorManagement.new().calculateWithSelectedPrompt($prompts[0])
		
		OBJECT SET VISIBLE:C603(*; "configured@"; True:C214)
		OBJECT SET VISIBLE:C603(*; "custom@"; False:C215)
		
End case 