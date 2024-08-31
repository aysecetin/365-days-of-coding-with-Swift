
# _EXTENSION_ 👩🏻‍💻

- 🤓 Allows us to extend an existing structure according to ourselves.
- This provides code protection by preventing the details of the structure we created from being seen.
- Can be accessed from anywhere by writing it in a swift file.
- All methods and variables must have an extension return type.
- e.g. create a new color

## _EXAMPLE EXTENSION VARIABLE_

💻
```swift
extension Double{
    var km:Double {return self*1000.0}
    var m:Double {return self}
    var cm:Double {return self/100.0}
    var mm:Double {return self/1000.0}
}

print(“10 cm is \(10.cm) meters.”)
print(“20 km is \(20.km) meters.”)

let num = 30.0
print(“30 mm \(num.mm) is meters.”)
```

## _EXAMPLE EXTENSION METHOD_

💻
```swift
extension String{
    func displacement( newLetter:String, oldLetter:String)->String{
        return self.replacingOccurrences(of: oldLetter, with: newLetter)
    }
}

let str = “orhan pamuk”.displacement( newLetter: “e”, oldLetter: “a”)
print(str)

var fruit = “fig”
let str2 = fruit.displacement(newLetter: “x”, oldLetter: “i”)
print(str2)

let name = “Pierce Brosnan”.displacement( newLetter: “u”, oldLetter: “e”)
print(name)

```
