//Given an alphabet and a string of text, write a method that
//tallies the count of each letter defined in said alphabet(case insensitive),
//then output the result of the tally


function alphaCount (alphabet, text) {
  	var alphabet = alphabet.toLowerCase().replace(/ /g, '');
	var text = text.toLowerCase().replace(/ /g, '');
	var object = {};
	for (var i=0; i < alphabet.length; i++){
		var elem = alphabet[i];
		object[elem]= 0;
	}

	for (var i=0; i < text.length; i++){
		var elem = text[i];
		if (object[elem] !== undefined){
			object[elem] +=1;
			var match = true;
		}
	}
	if (!match){
		return "no matches";
	}

	var end = [];
	for (var key in object){
	    if (object[key] != 0){
    		var str = key + ":" + object[key];
		    end.push(str);
	    }
	}

	var endStr = end.join(',');

	console.log(endStr);  
} 
