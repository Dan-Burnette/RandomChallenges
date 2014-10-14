
//Given a string of arbitrary size, convert each character
//into its integer equivalent and sum the entirety

function charSum (str) {
    var elems = str.split('');
    var sum = 0;
    for (var i=0; i < elems.length ; i++){
        var elem = elems[i];
        var digit = elem.match(/^[0-9]+$/);
        if (digit != null){
            sum += parseInt(digit[0]);
        }
    }
    console.log(sum);
}