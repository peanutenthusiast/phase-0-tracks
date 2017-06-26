function longestPhrase(arr) {
  var longest = arr[0].length;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].length > longest) {
      longest = arr[i];
    }
  }
  return longest
}

arr = ["long phrase","longest phrase","longer phrase"]

console.log(longestPhrase(arr));
//Call an array through the function
//Iterate through the array
//If the length of one string is greater than the other
//set the string of greater length equal to the longest word