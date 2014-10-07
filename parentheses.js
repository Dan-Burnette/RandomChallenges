// Given a string of open and closed parentheses,
// output "Balanced" if the parentheses are balanced and "Unbalanced"
// if they are not.

function balanced_brackets(s) {

	if (s == ')' || s == '('){
		return console.log("Unbalanced");
	}

	var left = 0;
	for (var i =0; i < s.length; i++){
		var elem = s[i];
		if (elem == '('){
			left++;
		}
		else if (elem == ')' && left != 0){
			left--;
		}
		else if (elem != ')' && elem != '(') {
			// do nothing
		}
		else {
			return console.log("Unbalanced");
		}
	}

	return console.log("Balanced");    
}