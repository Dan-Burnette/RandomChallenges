// Iterative Fib
// Given a number n, write an iterative (not recursive) solution to find the nth number in the fibonacci sequence.	

function iterativeFib (n) {
	var fibTerms = [];

	for (var i=0; i < n; i++) {
	
		if (fibTerms.length === 0 || fibTerms.length === 1){
			var term = 1;
		}
		else {
			var term = fibTerms[i-1] + fibTerms[i-2];
		}
		fibTerms.push(term);
	}
	console.log(fibTerms[fibTerms.length-1]);
}