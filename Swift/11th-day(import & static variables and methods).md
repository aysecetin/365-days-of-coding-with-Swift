# IMPORT
- 🤓 import allows us to use the classes we will need while coding in the class we are coding.

**Example:**
  We need to import MapKit classes for map operations  

```swift
import UIKit
import Foundation
import MapKit
```

# STATIC VARIABLES AND METHODS

💻 💻 💻 

- It is used when it is desired to access a variable or method from the class or structure without the need to create an object.

```swift

class Example{
    static var x = 10
    
    static func method(){
         print("hello")
    }
}

print(Example.x)
Example.method()
```


# ENUMERATION 

💻 💻 💻 

- Indicated by the 'enum' expression.
- Used in parameters.
- An operation is performed as a result of matching the data.
- It saves the coding software developer from detail.

```swift

enum Colours{
    case White
    case Black
}

var colour = Colours.White

switch colour{
    case.White:
        print("#FFFFF")
    case.Black:
        print("000000")
}

enum CannedSize{
    case Small
    case Medium
    case Large
}

func ucretAl(size:CanSize){
    switch size{
        case.Small:
            print(20*30)
        case. Medium:
            print(30*30)
        case.Large:
            print(40*30)
    }
}

var size = Can Size.Medium
buy(size: size)
buy(size: .Small)
```
