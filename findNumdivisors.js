// Non-trivial divisors only. (not 1 or the number itself)
function findNumDivisors(num){
	sum = 0;
	max = Math.floor(num/2);
	for (var i=2; i <= max; i++){
		if (num/i == Math.round(num/i) ){
			sum+=1;
		}
	}
	return sum;
}