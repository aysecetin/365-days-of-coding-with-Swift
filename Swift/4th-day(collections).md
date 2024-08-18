# COLLECTIONS 📚

🤓I will explain collections in two parts   
- array   
- set and dictionary    

## ARRAY[ ]📺

- Keeps data of the same type together.  
- Index numbers start from 0.  
- Array type must be specified when defining an array.  

```swift
var array1 = [Int]() // an empty array

var array2 = [1,2,3] // initialised value

var array3:[Float] = [10.0, 20.0, 30.0] // initialised value

var array4 = [Int](repeating: 0, count: 3) // construct that gives default values automatically (3 0 values occur.)
```


**Access to Array Data**  
We access with the index number.

```swift
var fruits:[String] = ["strawberry", "banana", "apple", "kiwi", "cherry"]
var str1 = fruits[2] ///apple
print(str1)
print(fruits[4]) ///cherry
```

**Array Data Insert**

```swift
fruits.append("watermelon") //add to the end of existing data


fruits += ["tangerine"] //add to the end of existing data


fruits[2] = "pineapple" //adding new data over existing data - pineapple instead of apple
```

```swift
for fruit in fruits{
    print(fruit)
}

for (index, fruit) in fruits.enumerated(){  //we used enumerated to print with the indexes.
    print("index:\(index) ,element: \(fruit)")
}

fruits.insert("orange", at:3)
print(fruits)

fruits.isEmpty
fruits.count // number of elements not index
fruits.first
fruits.last
fruits.contains(‘lettuce’) // we checked if it contains

fruits.max()
fruits.min()
print(fruits)

fruits.reverse() //reversed
fruits.sort()//sorts alphabetically because it is a string
print(fruits)


fruits.remove(at: 2) //removes the element with index number

print(fruits)

fruits.removeAll() //deletes all elements
```

**Array Filtering Operations**

```swift
var numbers = [1, 2, 3, 4, 4, 5, 5, 6, 7, 7, 8, 9, 10]

var result1 = numbers.filter({$0 > 7}) //$0 represents each element in the array *elements greater than 7*
print(result1)

var result2 = numbers.filter({$0 < 7})
print(result2)

var result3 = numbers.filter({$0>3 && $0<7}) //& sign allows us to filter between two values *between 3 and 7*
print(result3)
```

## Examples

**1 Odd - Even Numbers**

```swift
var numbers = [1, 4, 67, 42, 89, 90, 54, 12, 65, 73, 64, 87]

var odds = [Int]()
var evens = [Int]()

for s in numbers{
    let result = s % 2
    
    if result == 0{
        odds.append(s)
    }
    
    if result == 1{
        evens.append(s)
    }
}

print(‘Odd numbers’)
print(odds)

print(‘Even numbers’)
print(evens)
```

**2 Generate Random Number**

```swift
var numbers = [Int]()

for _ in 1...10{
    let randomNumber = Int.random(in: 0...9)
    
    numbers.append(Int(randomNumber))
}
numbers.sort()

print(numbers)
```

**3 Average Calculation**,

```swift
var numbers = [30, 40, 70, 100, 100, 50, 80, 90, 50, 70, 40]

var total = 0

for s in numbers{
    total = total + s
}

print("total: \(total)")

print("average: \(total/numbers.count)")
```

**4 Name Search**

```swift
var names = ["Ahmet", "Eda", "Ayşe", "İsmail", "Fatoş"]


for i in names{
    if names.contains("iclal"){
        print("this name exists in the array")
        break
       }else{
        print("this name does not exist in the array")
        break
    }
}
```

**5 Content Modification**

```swift

var numbers = [1, 2, 3, 4, 5]
print(numbers)
for (index, s) in numbers.enumerated(){ // gives the content of the numbers with their indexes.
    let result = s*2
    numbers[index] = result  //makes sure that the result is multiplied by 2 and written to the same place in the array
}
print(numbers)
```

**6 Ration Card Application**

```swift
var grades = [Int]()
var courses = [String]()

courses.append(‘History’)
grades.append(20)

courses.append("Physics")
grades.append(80)

courses.append("Maths")
grades.append(100)

courses.append("Biology")
grades.append(40)

var total = 0

for i in 0...(notes.count-1){
    print("\(courses[i]): \(grades[i])")
    total = total + grades[i]
}
print(‘**************************’)
print("average: \(total/ courses.count)")
```

