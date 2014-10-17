// Highest Frequency
// Given a string of only lowercase alphabet characters, find the 
// character that occurs the highest number of times. If any 
// characters tie, output them in alphabetical order.

function highestFreq(str) {
	dictionary = {}
	for (var i=0; i < str.length; i++){
		var elem = str[i];
		if (dictionary[elem] == undefined){
			dictionary[elem] = 1;
		}
		else {
			dictionary[elem] +=1;
		}
	}

	//Get the max count
	var maxCount = 0;
	for (var letter in dictionary){
		var letterCount = dictionary[letter];
		if (letterCount > maxCount){
			maxCount = letterCount;
		}
	}

	var highestFreqLetters= [];
	for (var letter in dictionary){
		if (dictionary[letter] == maxCount){
			highestFreqLetters.push(letter);
		}
	}

	var sorted = highestFreqLetters.sort();
	var stringAnswer= "";	
	for (var i=0; i < sorted.length; i++){
		stringAnswer += sorted[i];
	}
	console.log(stringAnswer);

}