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


