// Highest Frequency
// Given a string of only lowercase alphabet characters, find the 
// character that occurs the highest number of times. If any 
// characters tie, output them in alphabetical order.

function highestFreq(str) {
	dictionary = {}
	var maxCount = 1;
	//Build a dictionary of form {letter : count} and also find the max times a letter appears
	for (var i=0; i < str.length; i++){
		var elem = str[i];
		if (dictionary[elem] == undefined){
			dictionary[elem] = 1;
		}
		else {
			dictionary[elem] +=1;
			if (dictionary[elem] > maxCount){
			  maxCount = dictionary[elem];
			}
		}
	}

	//Find all letters that appear maxCount times
	var highestFreqLetters= [];
	for (var letter in dictionary){
		if (dictionary[letter] == maxCount){
			highestFreqLetters.push(letter);
		}
	}

	//Sort alphabetically and convert into string output format
	var sorted = highestFreqLetters.sort();
	var stringAnswer= "";	
	for (var i=0; i < sorted.length; i++){
		stringAnswer += sorted[i];
	}
	console.log(stringAnswer);

}