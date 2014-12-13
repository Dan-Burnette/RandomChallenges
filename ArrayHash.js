// For example, if nums = [4, 1, 7],
// return (4 * 31 + 1 * 312 + 7 * 313) % 1000000 = 209622.

function arrayHash(arr){
	var sum = 0;
	for (var i=0; i < arr.length; i++){
		var term = arr[i];
		var multiplier = Math.pow(31, i+1);
		sum += term * multiplier
	}
	return sum % 1000000;
}