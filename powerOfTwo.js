//Power of Two
//Given a number, output "yes" if the number is a power of 2. Otherwise, output "no".

function powerOfTwo (number) {
  if (number == 0){
    console.log("no");
    return;
  }
  if (number == 1){
    console.log("yes");
    return;
  }
  while (number % 2 == 0){
    number = number/2;
    if (number == 1){
      console.log("yes");
      return;
    }
  }
  console.log("no");
}
