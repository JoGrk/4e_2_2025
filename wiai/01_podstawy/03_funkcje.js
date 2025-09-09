// 1. Why pay a fortune teller when you can just program your fortune yourself?

// Write a function named tellFortune that:
// takes 4 arguments: number of children, partner's name, geographic location, job title.
// outputs your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."
// Call that function 3 times with 3 different values for the arguments.
 function tellFortune(children, partnerName, location, job){
    console.log(`You will be a ${job} in ${location}, and married to ${partnerName} with ${children} kids.`)
 }
tellFortune(2,`Andrzej`,`Poland`,`kopacz rowów`)
tellFortune(3,`Robert`,`Warszawa`,`technik informatyk`)
tellFortune(0,`Filip`,`Rzeszów`,`President`)


// 2. You know how old your dog is in human years, but what about dog years? Calculate it!

// Write a function named calculateDogAge that:
// takes 1 argument: your puppy's age.
// calculates your dog's age based on the conversion rate of 1 human year to 7 dog years.
// outputs the result to the screen like so: "Your doggie is NN years old in dog years!"
// Call the function three times with different sets of values
 
function calculateDogAge(puppyAge){
    console.log(`Your doggie is ${puppyAge*7} years old in dog years!"`)
}
 
calculateDogAge(2)

// 3. Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!

// Write a function named calculateSupply that:
// takes 2 arguments: age, amount per day.
// calculates the amount consumed for rest of the life (based on a constant max age).
// outputs the result to the screen like so: "You will need NN to last you until the ripe old age of X"
// Call that function three times, passing in different values each time.
 function calculateSupply(age, amountPerDay ){
    const maxAge = 90
    console.log(`You will need ${amountPerDay*365*maxAge} to last you until the ripe old age of ${maxAge}`)
 }

// 4. 

// Create 2 functions that calculate properties of a circle, using the definitions here.

// Create a function called calcCircumfrence:

// Pass the radius to the function.
// Calculate the circumference based on the radius, and output "The circumference is NN".
// Create a function called calcArea:

// Pass the radius to the function.
// Calculate the area based on the radius, and output "The area is NN".
 
const pi = 3.14
calcCircumfrence(10)
function calcCircumfrence(radius){
   console.log(`The circumference is ${2*pi*radius}`)
}

function calcArea(radius){
   console.log(`The area is ${pi*radius**2}`)
}

calcArea(15)


 

// 5. 

// It's hot out! Let's make a converter based on the steps here.

// Create a function called celsiusToFahrenheit:

// Store a celsius temperature into a variable.
// Convert it to fahrenheit and output "NN°C is NN°F".
// Create a function called fahrenheitToCelsius:

// Now store a fahrenheit temperature into a variable.
// Convert it to celsius and output "NN°F is NN°C."


function celsiusToFahrenheit(celsius){
   console.log(`${celsius}°C is ${(celsius*9/5)+32}°F`)
}
celsiusToFahrenheit(24)

function fahrenheitToCelsius(fahrenheit){
   console.log(`${fahrenheit}°F is ${(fahrenheit-32)*5/9}°C`)
}
fahrenheitToCelsius(77)
 


// 6. Function `oppositeNum()` returns the oposite number for the given argument number value.

function oppositeNum(number){
   return -number
}
console.log(`${oppositeNum(241)}`)
console.log(`${oppositeNum(13)}`)
console.log(`${oppositeNum(689)}`)

// Write a function named oppositeNum that:
// takes 1 arguments: number.
// returns the opposite (additive inverse) of its argument.
// Call that function three times, passing in different values each time. Output result to the screen like so: "opposite numer to NN is NN", example "opposite numer to 5 is -5"
 