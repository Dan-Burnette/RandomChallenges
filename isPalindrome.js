//Given a string, output "yes" if it's a palindrome, and "no" otherwise. 
//Only consider alphabet characters as part of the word.
function isPalindrome (str) {
  var forward = str.toLowerCase().replace(/ /g, '').split('').join("");
  var reverse = forward.split('').reverse().join("");
  forward == reverse ? console.log("yes") : console.log("no");
}
