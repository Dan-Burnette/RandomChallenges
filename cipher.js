// Caesar Cipher
// Given an alphabet, an offset, a message, and a command, encode or decode 
// the message by translating each letter in the given alphabet by the offset amount.
// Each letter in the message will basically "shift" by the offset amount
// (if the letter is a part of the alphabet).


function cipher(alpha, offset, message, command) {
	var output = "";
	var cmdObj = {
		decode : -offset,
		encode : offset
	}

	alpha = alpha.split('');
	for (var i=0; i < message.length; i++){
		var index = alpha.indexOf(message[i]);
		var position = 0;
		if (index > -1){
			var position = index + cmdObj[command] % alpha.length
			if (position >= alpha.length) {
				position = Math.abs(position-alpha.length)
			}
			else if (position < 0){
				position = alpha.length + position;
			}
			output += alpha[position];	
		}
		else {
			output += message[i];
		}
	} 

	console.log(output);
}