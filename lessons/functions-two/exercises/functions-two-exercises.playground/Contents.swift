//: Playground - noun: a place where people can play

import UIKit

//1a) Write a function so that it will print out total cost after tip.

let itemCost = 45
let tipPercentage = 0.15

//Write your code below

func totalWithTip(cost: Int, tipPercent tip: Double) {
    let total = Double(cost) + (Double(cost) * tip)
    print(total)
}

totalWithTip(itemCost, tipPercent: tipPercentage)

//1b)Write a function  that it will print out total cost after tip and tax
let taxPercentage = 0.09

//Write your code below

func totalWithTipAndTax(cost: Int, tip: Double, tax: Double) -> Double {
    let total = Double(cost) + (Double(cost) * tip) + (Double(cost) * tax)
    print(total)
    return total
}

let myFinalCostWithTipAndTax = totalWithTipAndTax(itemCost, tip: tipPercentage, tax: taxPercentage)


//2a)Write a function takes an Int as input, and returns true if it is even, and false if it is odd

//Write your code below

func trueIfEven(a: Int) -> Bool {
    if a % 2 == 0 {
        print("\(a) is even!")
        return true
    } else {
        print("\(a) is odd!")
        return false
    }
}

trueIfEven(3)

//2b) Using function above, write code that prints out whether dieRoll is even or odd

let dieRoll = Int(arc4random_uniform(6) + 1)

func evenOrOddDieRoll(rollNum: Int) -> String {
    if rollNum % 2 == 0 {
        let evenString = "You rolled an even number"
        print(evenString)
        return evenString
    } else {
        let oddString = "You rolled an odd number"
        print(oddString)
        return oddString
    }
}

evenOrOddDieRoll(dieRoll)

//3)
/*
 Write a function that prints the numbers from 1 to x. EXCEPT:
 * If the number if a multiple of 3, print "Fizz" instead of the number
 * If the number is a multiple of 5, print "Buzz" instead of the number
 * If the number is a multiple of 3 AND 5, print "FizzBuzz" instead of the number
 
 Your function should take in one parameter: x (the number to count up to)
 */

func fizzBuzz(count: Int) {
    for i in 1...count {
        switch i {
        case _ where i % 5 == 0 && i % 3 == 0:
            print("FizzBuzz")
        case _ where i % 3 == 0:
            print("Fizz")
        case _ where i % 5 == 0:
            print("Buzz")
        default:
            print(i)
        }
    }
}

fizzBuzz(20)



//4a) Write a function that takes [Int] as input.  It should return the largest Int in the array.

//Write your code below
let myArray = [3,5,1,3,532,1,4,91,20,30,92,143]

func largestIntInArray(num: [Int]) -> Int {
    var largest = num[0]
    for i in num {
        if i > largest {
            largest = i
        }
    }
    return largest
}

largestIntInArray(myArray)

//4b)


//Using your function in part a, use String interpolation to print a sentence that states what the largest Int in myArray is

func largestIntInArrayWithString(num: [Int]) -> Int {
    var largest = num[0]
    for i in num {
        if i > largest {
            largest = i
        }
    }
    print("The largest Int is myArray is \(largest)")
    return largest
}

largestIntInArrayWithString(myArray)

//4c)
//Using your solution to 2a), print a sentence that states whether the largest Int in myArray is even or odd


func largestEvenOddIntInArray(num: [Int]) -> Int {
    var largest = num[0]
    for i in num {
        if i > largest {
            largest = i
            func trueIfEven(a: Int) -> Bool {
                if a % 2 == 0 {
                    print("\(a) is even!")
                    return true
                } else {
                    print("\(a) is odd!")
                    return false
                }
            }
        }
    }
    trueIfEven(largest)
    return largest
}

largestEvenOddIntInArray(myArray)


//5a) Write a function that takes a String as input and returns the number of characters in the string

//Write your code below

func characterCount(text: String) -> Int {
    var counter = 0
    for _ in text.characters {
        counter += 1
    }
    print("This sting has \(counter) characters")
    return counter
}

var testString = "This is a test!"
characterCount(testString)

//5b) Using your function above, print how many characters are in myString

let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."

characterCount(myString)

//5c) Write a function that counts how many characters in a String match a specific character.  (e.g: count how many "a"s are in a String, or count how many ","s are in a String.

//Sample input:
let FiveCString = "This is a test string for your code"
let targetCharacter = "i"

//Sample output:
//3

func characterDuplicateCount(text: String, targetCharacter: String) -> Int {
    var count = 0
    for char in text.characters {
        if char == Character(targetCharacter) {
            count += 1
        }
    }
    print("\(targetCharacter) appears \(count) times.")
    return count
}

characterDuplicateCount(FiveCString, targetCharacter: targetCharacter)


//5d) Write a function that counts how many characters in a String match one of several possible characters.  (e.g: count how many vowels are in a String, or count how many "a"s "b"s and "c"s are in a Sting)

//Sample input:
let FiveDString = "This one is a little more complicated"
let targetCharactersArray = ["a", "e", "i", "o", "u"]

//Sample output:
//13

//Write your code below

func characterRangeMatch(text: String, targetCharacters: [String]) -> Int {
    var count = 0
    for char in targetCharacters {
        for letter in text.characters{
            if letter == Character(char) {
                count += 1
            }
        }
    }
    return count
}

characterRangeMatch(FiveDString, targetCharacters: targetCharactersArray)


//6) Write a function that returns the number of unique Ints in an array of Ints
//Sample input:
let inputArray = [3,1,4,1,3,2,6,1,9]

//Sample output:
//4

func uniqueIntInArray(arr: [Int]) -> Int {

    var uniqueIntCount = [Int]()
    var count = 0
    
    for i in arr {
        if !(uniqueIntCount.contains(i)) {
            uniqueIntCount.append(i)
            count += 1
            
        }
        //count += 1
    }
    print(uniqueIntCount, arr, count)
//
    return uniqueIntCount.count
}

uniqueIntInArray(inputArray)

//Explanation:
//2, 4, 6, 9 are unique in the array.  Every other number is not unique.


//7) Write a function that converts a binary number into decimal.  The binary number will be given as an array of Ints.

//Sample input:
let binaryArray = [1,0,1,1,1,0,1]

//Sample output:

func binaryToDecimal(bits: [Int]) -> Int {
    var base2 = 0.0
    var decimalNum = 0
    var total = 0

    
    for (index, value) in bits.enumerate() {
        base2 = pow(2.0, Double(index))
        decimalNum = Int(base2) * value
        if value != 0 {
            total += decimalNum
        }
        print(value, index, base2)
    }
    print(total)
    return total
}

binaryToDecimal(binaryArray)

var movies: [[String:Any]] = [
    [
        "name": "Minions",
        "year": 2015,
        "genre": "animation",
        "cast": ["Sandra Bullock", "Jon Hamm", "Michael Keaton"],
        "description": "Evolving from single-celled yellow organisms at the dawn of time, Minions live to serve, but find themselves working for a continual series of unsuccessful masters, from T. Rex to Napoleon. Without a master to grovel for, the Minions fall into a deep depression. But one minion, Kevin, has a plan."
    ],
    [
        "name": "Shrek",
        "year": 2001,
        "genre": "animation",
        "cast": ["Mike Myers", "Eddie Murphy", "Cameron Diaz"],
        "description": "Once upon a time, in a far away swamp, there lived an ogre named Shrek whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. They were all banished from their kingdom by the evil Lord Farquaad. Determined to save their home -- not to mention his -- Shrek cuts a deal with Farquaad and sets out to rescue Princess Fiona to be Farquaad\"s bride. Rescuing the Princess may be small compared to her deep, dark secret."
    ],
    [
        "name": "Zootopia",
        "year": 2016,
        "genre": "animation",
        "cast": ["Ginnifer Goodwin", "Jason Bateman", "Idris Elba"],
        "description": "From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law."
    ],
    [
        "name": "Avatar",
        "year": 2009,
        "genre": "action",
        "cast": ["Sam Worthington", "Zoe Saldana", "Sigourney Weaver"],
        "description": "On the lush alien world of Pandora live the Na\"vi, beings who appear primitive but are highly evolved. Because the planet\"s environment is poisonous, human/Na\"vi hybrids, called Avatars, must link to human minds to allow for free movement on Pandora. Jake Sully, a paralyzed former Marine, becomes mobile again through one such Avatar and falls in love with a Na\"vi woman. As a bond with her grows, he is drawn into a battle for the survival of her world."
    ],
    [
        "name": "The Dark Knight",
        "year": 2008,
        "genre": "action",
        "cast": ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
        "description": "With the help of allies Lt. Jim Gordon and DA Harvey Dent, Batman has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism."
    ],
    [
        "name": "Transformers",
        "year": 2007,
        "genre": "action",
        "cast": ["Shia LaBeouf", "Megan Fox", "Josh Duhamel"],
        "description": "The fate of humanity is at stake when two races of robots, the good Autobots and the villainous Decepticons, bring their war to Earth. The robots have the ability to change into different mechanical objects as they seek the key to ultimate power. Only a human youth, Sam Witwicky can save the world from total destruction."
    ],
    [
        "name": "Titanic",
        "year": 1997,
        "genre": "drama",
        "cast": ["Leonardo DiCaprio", "Kate Winslet", "Billy Zane"],
        "description": "The ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the \"ship of dreams\" -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912."
    ],
    [
        "name": "The Hunger Games",
        "year": 2012,
        "genre": "drama",
        "cast": ["Jennifer Lawrence", "Josh Hutcherson", "Liam Hemsworth"],
        "description": "Katniss Everdeen voluntarily takes her younger sister\"s place in the Hunger Games, a televised competition in which two teenagers from each of the twelve Districts of Panem are chosen at random to fight to the death."
    ],
    [
        "name": "American Sniper",
        "year": 2014,
        "genre": "drama",
        "cast": ["Bradley Cooper", "Sienna Miller", "Kyle Gallner"],
        "description": "Navy S.E.A.L. sniper Chris Kyle\"s pinpoint accuracy saves countless lives on the battlefield and turns him into a legend. Back home to his wife and kids after four tours of duty, however, Chris finds that it is the war he can\"t leave behind."
    ]
]


//8) Copy the movie dictionary from homework two and add another [String] to each movie.
//   Name it "locations" and add some dummy data. Use the re-factored nested function
//   from the full lesson (we didn't go over it) to print both the cast list and the 
//   locations.

//Write your code below

for dict in movies {
    for d2 in dict {
        print(d2)
    }
}


//9) Given one movie write a function that takes the movie (remember to use its type)
//   as its only argument and return a tuple that contains name, year and genre.

//Write your code below


//10) Define a function that takes the movie array that will call the function you just created 
//    in answer to the previous question. The new function should return an array of the
//    tuples: (name, year, genre).

//Write your code below


//11) Write a function that takes the movie as its only argument that lists all cast members across movies.
//    The tricky part: no duplicates. I think you'll need to edit the data to create some doubled actors in order
//    to test this. Return should be [String]?.

//Write your code below
class Room {
    var chairString = "There are 10 chairs"
    var tableNum: Int = 5
    var chairNum: Int {             //Line 4
        get {
            return tableNum * 2
        }
        set(newValue) { //You have to create a parameter that gets updated when it is set
            return chairString = "There are \(newValue) chairs"       //Line 9
        }
    }
}
let myRoom = Room()
myRoom.tableNum = 8
myRoom.chairNum = 45//You have to actually change chairNum by setting it to a value for it to execute
print(myRoom.chairString)
