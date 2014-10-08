// Given an array of integers, find and print 
// the length of the longest increasing sequence
var longestIncreasingSequence = function(array) {
	var sequenceLengths = [];
	var sequence = [];

	sequence.push(array[0]);
	for (var i=1; i < array.length; i++){
		var elem = array[i];
		if (elem >= array[i-1]){
			sequence.push(elem);
		}
		else {
			var seqLength = sequence.length;
			sequenceLengths.push(seqLength);
			sequence = [];
			sequence.push(elem);
		}
	}

	var maxLength = Math.max.apply(null, sequenceLengths);
	return maxLength;
}