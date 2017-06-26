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
  var keys = Object.keys(object1);
  var keys2 = Object.keys(object2);
  var values1 = Object.values(object1);
  var values2 = Object.values(object2);
  for (var i = keys.length - 1; i >= 0; i--) {
    if ((keys[i] == keys2[i] && values[i] == values2[i]) === true) {
      return true;
    } else {
      return false;
    }
  }
}

console.log(ifCommon(person1, person2));
console.log(ifCommon(person1, animal1));
ifCommon(animal1, animal2);
call two objects as arguments
define keys and values as separate arrays
loop through the key with index
if the key of a certain index is equal to that the other
and if the value of that certain index is equal to that of the other
and ALL that is true, return true
else, return false.


//method takes an an integer for length
//6 = array.length
//populates an empty array with 6 items
//each item is a random word from 1 to 10 letters
//returns the array
//pops the array the longestWord function which will print the result

var randomInt = (Math.random() * (9) + 1)

var word = ""
var alphabet = "abcdefghijklmnopqrstuvwxyz";

function randomWords() {
  for (var i = randomInt; i > 0 ; i--) {
    word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
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
console.log(array)
longestPhrase(array)
getRandomArraysofRandomWords(4)
console.log(array)
longestPhrase(array)
getRandomArraysofRandomWords(6)
console.log(array)
longestPhrase(array)
getRandomArraysofRandomWords(7)
console.log(array)
longestPhrase(array)
console.log(array)
getRandomArraysofRandomWords(5)
console.log(array)
longestPhrase(array)
getRandomArraysofRandomWords(3)
console.log(array)
longestPhrase(array)
getRandomArraysofRandomWords(4)
console.log(array)
longestPhrase(array)
getRandomArraysofRandomWords(10)
console.log(array)
longestPhrase(array)
getRandomArraysofRandomWords(2)









