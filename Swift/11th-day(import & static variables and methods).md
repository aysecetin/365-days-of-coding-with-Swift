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
