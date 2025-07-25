property clientAI : Object

// Constructor that initializes the OpenAI client with the provided API key
Class constructor($openAIKey : Text)
	
	This:C1470.clientAI:=cs:C1710.AIKit.OpenAI.new($openAIKey)
	
Function checkKey() : Boolean
	
	var $result:=This:C1470.clientAI.models.list()
	If ($result.success)
		return True:C214
	Else 
		return False:C215
	End if 
	
	// Function that generates a vector representation of the input text using OpenAI embeddings
Function generateVector($text : Text) : 4D:C1709.Vector
	
	// Name of the embedding model to use
	var $model:="text-embedding-3-large"
	
	// Call the OpenAI embeddings API to generate the vector for the input text
	var $result:=This:C1470.clientAI.embeddings.create($text; $model)
	
	// Convert the embedding collection into a 4D.Vector object and return it
	return $result.vector