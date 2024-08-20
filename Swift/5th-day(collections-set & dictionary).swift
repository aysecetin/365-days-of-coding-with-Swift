
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

