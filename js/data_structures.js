var color = ["red", "blue", "teal", "white"];
var name = ["Ed", "Ted", "Eddy", "Bob"];

color.push("magenta");
name.push("Billy");

console.log(color);
console.log(name);

var horse = {};
for (var i = 0; i < color.length; i++) {
  horse[name[i]] = color[i]
}
console.log(horse)

function Car(brand, color, isStickShift) {
  console.log("Our new car:", this);

  this.brand = brand;
  this.color = color;
  this.isStickShift = isStickShift;

  this.speed = function(brand) {
    if (brand === "Ferrari") {
      console.log("Speed is very very fast!");
    } else if (brand === "Toyota") {
      console.log("Speed is very very slow!");
    } else {
      console.log("Speed is so-so...");
    }
  }
}

var ferrari = new Car("Ferrari", "red", true);
console.log(ferrari);
console.log("How fast is this car?");
ferrari.speed("Ferrari");
console.log("-------------")

var toyota = new Car("Toyota", "blue", false);
console.log(toyota);
console.log("How fast is this car?");
toyota.speed("Toyota");
console.log("-------------")

var honda = new Car("Honda", "green", false);
console.log(honda);
console.log("How fast is this car?");
honda.speed("Honda");
console.log("-------------")