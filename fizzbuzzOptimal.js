function fizzBuzz(num) { 
  if (num % 3 == 0){
    if (num % 5 == 0) {
      return "FizzBuzz";
    }
    return "Fizz";
  }
  else if (num % 5 == 0) {
    return "Buzz";
  }
  else {
    return "";
  }
}