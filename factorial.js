function factorial(var num) { 
  var sum = num;
  for (var i=num-1; i > 0; i--){
    sum *= i
  }
  return sum;
}

