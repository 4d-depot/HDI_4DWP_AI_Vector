//%attributes = {}
var $apiKey:="__key__"

// Documents
var $doc : cs:C1710.NoteEntity
var $documents:=ds:C1482.Note.all()

For each ($doc; $documents)
	
	$txt:=WP Get text:C1575($doc.Document)
	$doc.Vector:=cs:C1710.AIManagement.new($apiKey).generateVector($txt)
	$doc.save()
	
End for each 


// Prompts
var $prompt : cs:C1710.PromptsEntity
var $prompts:=ds:C1482.Prompts.all()

For each ($prompt; $prompts)
	
	$prompt.Vector:=cs:C1710.AIManagement.new($apiKey).generateVector($prompt.Description)
	$prompt.save()
	
End for each 
