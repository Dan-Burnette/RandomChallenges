
//Given a string of arbitrary size, convert each character
//into its integer equivalent and sum the entirety

function charSum (str) {
    var elems = str.split('');
    var sum = 0;
    for (var i=0; i < elems.length ; i++){
        var elem = elems[i];
        var match = elem.match(/^[0-9]+$/);
        if (match != null){
            sum += parseInt(match[0]);
        }
    }
    console.log(sum);
}