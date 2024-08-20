import UIKit
// SET
// Has the same properties as Array.
// You cannot save the same data repeatedly
// The data inserted are placed randomly and irregularly.
// Index values are difficult to track

//set definition
var notes = Set <Int>()
var fruits:Set = ["strawberry", "banana", "kiwi", "pineapple"]
var numbers:Set<Float> = [10.0, 20.0, 30.0]

for m in fruits {
    print(m)
}

fruits.insert("watermelon")
fruits.insert("peach")


print(fruits)

fruits.isEmpty
fruits.count
fruits.first

fruits.contains("orange")
fruits.contains("peach")

fruits.max()
fruits.min()

fruits.removeAll()

//set examples

let odds:Set = [1,3,5,7,9]
let evens:Set = [0,2,4,6,8]
let primes:Set = [2,3,5,7]

let array = odds.union(evens).sorted()
print(array)

let array1 = odds.intersection(evens).sorted() /// gets intersections
print(array1)

let array2 = odds.subtracting(primes) ///subtracting primes from singles
print(array2)

let array3 = odds.symmetricDifference(primes).sorted() /// extracts intersections from all
print(array3)

//DICTIONARY 

/*
- The empty dictionary is represented by ‘[:] ’.
- It is the same as the ‘hash - map’ structure in Java
- key and value are related
*/

var dict1 = [Int:String]()

var dict2 = [3.14:"pi", 2.71:"e"]

var dict3:[Int:String] = [1:"bir", 2:"iki", 3:"üç"]

var iller = [16: "bursa", 34:"istanbul", 6:"ankara"]
print(iller)

iller[35] = "izmir"
iller[7] = "antalya"
print(iller)

iller[16] = "yeni bursa"
print(iller)

iller.updateValue("yeni izmir", forKey: 35)
print(iller)

for (anahtar,değer) in iller{
    print("Anahtar:\(anahtar), il:\(değer)")
}

iller.removeValue(forKey: 35)
print(iller)

iller.isEmpty
iller.count
iller.first

var ters = iller.reversed()
print(ters)



//**JOINING SEQUENCES AND CREATING A DICTIONARY**

var courses = ["chemistry", "maths", "literature"]
var grades = [50,80,60]

var gradesOfCourses = Dictionary(uniqueKeysWithValues: zip(courses,grades))
print(gradesOfCourses)


////**SORTING THE DICTIONARY INTO SERIES**

var pricesOfProduct:[Double:String] = [15.99: "book", 299.99: "t-shirt", 32.49: "watch" ]

var prices = [Double](pricesOfProduct.keys)
var products = [String](pricesOfProduct.values)
print(prices)
print(products)






