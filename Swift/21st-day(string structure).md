# STRING STRUCTURE

## Identification

```swift

let sringA = "Hello"

let stringB = String("Hello object")

let strinC = """
Hello.
This is a swift tutorial

I hope it's useful...
"""

print(sringA)
print(stringB)
print(strinC)

Blank check

var str1 = "a"


if str1.isEmpty{
    print("str1 is empty.")
}else{
    print("str1 is not empty.")
}

var str2 = String()

if str2.isEmpty{
    print("str2 is empty.")
}else{
    print("str2 is not empty.")
}
```

## Adding data \()

```swift

let a = 10
let b = 200

let str = "\(a) x \(b) = \(a*b)"
print(str)


let str3 = "Hello"
let str4 = " World!"

let result = str3 + str4
print(result)

```

## Size

```swift
let str5 = "Hello Swift!"

print("\(str5) size: \(str5.count)")

let str6 = "hello"

let str7 = "hello"

if str6 == str7{
    print("\(str6) and \(str7) are equal.")
}else{
    print("\(str6) and \(str7) are not equal.")

}
```

## Fragmentation

```swift 

let str8 = "Hello"

for letter in str8{
    print(letter, terminator:" ")
}

```

## String Methods

```swift

var str1 = "Hello"

if str1.contains("erX"){
    print("contains.")
}else{
    print("does not contain")
}

str1.insert("w", at: str1.index(str1.startIndex,offsetBy: 3))
print(str1)

str1.remove( at: str1.index(str1.startIndex,offsetBy: 3))
print(str1)
```

## Write The String Word Backwards

```swift
var str = "Hello"

var letters = [Character]()

for letter in str{
    print(letter)
    letters.append(letter)
}
print(letters)

for i in stride(from: letters.count - 1 , through: 0, by: -1){
    print(letters[i],terminator: ‘’)
}
```

