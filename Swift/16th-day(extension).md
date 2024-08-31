
# EXTENSION
- Allows us to extend an existing structure according to ourselves.
- This provides code protection by preventing the details of the structure we created from being seen.
- Can be accessed from anywhere by writing it in a swift file.
- All methods and variables must have an extension return type.
- e.g. create a new color

## EXAMPLE EXTENSION VARIABLE 

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
