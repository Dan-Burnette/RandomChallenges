function pow(num, power){
	sum = 1;
	for (var i=1; i <= power; i++){
		sum = sum*num;
	}
	return sum;
}