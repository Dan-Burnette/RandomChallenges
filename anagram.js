function isAnagram(a, b){
	var elems1 = a.toLowerCase().split("").sort();
	var elems2 = b.toLowerCase().split("").sort();
	var nospaces1 = [];
	var nospaces2 = [];

	for (var i=0; i < elems1.length; i++){
		if (elems1[i] != " "){
			nospaces1.push(elems1[i]);
		}
	}

	for (var j=0; j < elems2.length; j++){
		if (elems2[j] != " "){
			nospaces2.push(elems2[j]);
		}
	}

	if (nospaces1.length == nospaces2.length){
		for (var z=0; z < nospaces1.length; z++){
			if (nospaces1[z] != nospaces2[z]){
				print("no");
				return;
			}
		}
	}

	print("yes");
	return;

};