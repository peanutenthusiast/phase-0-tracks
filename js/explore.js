//for the length of a string, iterate from the last letter of a string to the first
//start from index of last item, subtract 1 each time

//var str = "hello";

function reverseString(str) {
  var newString = "";

  for (var i = str.length - 1; i >= 0; i--) {
    newString += str[i];
  }
  return newString; 
}

reverseString('palindrome');
