
// Only Unique
// Given an string, remove any characters that are not unique from the string.
function onlyUnique (str) {
 var dict = {};
 for (var i=0; i < str.length; i++){
   var elem = str[i];
   if (dict[elem] == undefined){
     dict[elem] = 1;
   }
   else {
     dict[elem]+=1;
   }
 }

 var endString = "";
 for (var letter in dict) {
   if (dict[letter] == 1){
       endString += letter; 
   }
 }
 console.log(endString);
}
