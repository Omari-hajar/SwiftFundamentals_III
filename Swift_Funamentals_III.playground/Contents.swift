import UIKit

//declaring an array

var arrayOfNumbers = Array<Int>()

//create a loop to fill array 1-255
//Write a program that adds the numbers 1-255 to an array

for i in 1...255{
    arrayOfNumbers.append(i)
}
print("==========================Original Array=============================")
print(arrayOfNumbers)
//Swap two random values in the array using arc4random_uniform(UInt32)

//random number generated
print("==========================Swap a Single Number=============================")
let number1 = Int.random(in: 0..<arrayOfNumbers.count)
let number2 = Int.random(in: 0..<arrayOfNumbers.count)
print("index = \(number1), value = \(arrayOfNumbers[number1])")
print("index = \(number2), value = \(arrayOfNumbers[number2])")


//swaping number in an array
var temp = arrayOfNumbers[number1]

arrayOfNumbers[number1] = arrayOfNumbers[number2]
arrayOfNumbers[number2] = temp
print(arrayOfNumbers)


//Now write the code that swaps random values 100 times (You've created a "Shuffle"!)
//create a loop to shuffle
print("==========================Array Shuffle=============================")
var i = 1
while i < 255{
    //random number generated
    let number1 = Int.random(in: 0..<arrayOfNumbers.count)
    let number2 = Int.random(in: 0..<arrayOfNumbers.count)
   // print("index 1 = \(number1), value 1 = \(arrayOfNumbers[number1])")
   // print("index 2 = \(number2), value 2 = \(arrayOfNumbers[number2])")

    //swaping number in an array
    let tempNum = arrayOfNumbers[number1]
    arrayOfNumbers[number1] = arrayOfNumbers[number2]
    arrayOfNumbers[number2] = tempNum
   
    i += 1
}
print(arrayOfNumbers)


//Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Universe, and Everything at index __" and print the index of where "42" was before you removed it.

//iterate throgh the array
print("==========================Finding 42=============================")

//for i in 0..<arrayOfNumbers.count{
//    if arrayOfNumbers[i] == 42 {
//        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(i)")
//
//    }
//}


if arrayOfNumbers.contains(42){
    let i: Int? = arrayOfNumbers.firstIndex(of: 42)
    if let index = i {
        arrayOfNumbers.remove(at: index)
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(index)")
        print(arrayOfNumbers)
    }
}
