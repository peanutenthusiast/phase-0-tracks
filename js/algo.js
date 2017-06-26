function longestPhrase(arr) {
  var longest = 0;
  var longest_word;
  for (var l = 0; l < arr.length; l++) {
    if (arr[l].length > longest) {
      longest = arr[l].length;
      longest_word = arr[l];
    }
  }
  console.log(longest_word)
}

arr = ["long phrase","longest phrase","longer phrase"]

console.log(longestPhrase(arr));
//Call an array through the function
//Iterate through the array
//If the length of one string is greater than the other
//set the string of greater length equal to the longest word

person1 = {name: "Steven", age: 54};
person2 = {name: "Tamir", age: 54};

animal1 = {animal: "Dog", legs: 4};
animal2 = {animal: "Dog", legs: 3};

function ifCommon(object1, object2) {
  var entries = Object.entries(object1);
  var entries2 = Object.entries(object2);
  var pairs = entries[0];
  var pairs2 = entries[1];
  var pairs3 = entries2[0];
  var pairs4 = entries2[1];
  for (var i = pairs.length - 1; i >= 0; i--) {
    if(pairs[i] == pairs3[i] || pairs2[i] == pairs4[i]) {
      return true;
  }
  return false;
}
}
console.log(ifCommon(person1, person2));
console.log(ifCommon(animal1, animal2));
console.log(ifCommon(animal2, person1));
// call two objects as arguments
// flatten key-pair values to array
// isolate each inner array as its own
// loop through the key with index
// if the key of a certain index is equal to that the other
// and if the value of that certain index is equal to that of the other
// and ALL that is true, return true
// else, return false.


// method takes an an integer for length
// 6 = array.length
// populates an empty array with 6 items
// each item is a random word from 1 to 10 letters
// returns the array
// pops the array the longestWord function which will print the result

var randomInt = Math.round((Math.random() * (9) + 1));

var alphabet = "abcdefghijklmnopqrstuvwxyz";

function randomWords() {
  var word = ""
  for (var i = randomInt; i > 0 ; i--) {
    word += alphabet[Math.floor(Math.random() * alphabet.length)];
  }
  return word
}

var array = [];


function getRandomArraysofRandomWords(int) {
  array.length == int;
  for (var a = 0; a < int; a++) {
    var item = randomWords();
    array[a] = item
  }
  console.log(array);
}

getRandomArraysofRandomWords(3)
longestPhrase(array)
getRandomArraysofRandomWords(4)
longestPhrase(array)
getRandomArraysofRandomWords(6)
longestPhrase(array)
getRandomArraysofRandomWords(7)
longestPhrase(array)
getRandomArraysofRandomWords(5)
longestPhrase(array)
getRandomArraysofRandomWords(3)
longestPhrase(array)
getRandomArraysofRandomWords(4)
longestPhrase(array)
getRandomArraysofRandomWords(10)
longestPhrase(array)
getRandomArraysofRandomWords(2)









