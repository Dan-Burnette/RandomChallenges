function hasFibonacciRecurrence(arr){
	for (var i=2; i < arr.length; i++){
		var term = arr[i];	
		if (term != (arr[i-1] + arr[i-2])){
			return false;
		}
	}
	return true;
}