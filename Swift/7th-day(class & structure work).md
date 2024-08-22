# CLASS & STRUCTURE

**🤓I tried to explain the work of class and structure through the 🚗car analogy 🚍bus analogy.**

```swift
import UIKit

class Car {             
  var color:String?    
  var speed:Int?
  var doesItWork:Bool?

  func run (){
    doesItWork = true
  }
  
  func stop (){
    doesItWork = false 
    speed = 0
  }

  func speedUp (howManyKm:Int){
    speed! += howManyKm
  }

  func slowDown (howManyKm:Int){
    speed! -= howManyKm
  }

  func getInfo(){
    print("Color: \(color!)")    
    print("Speed: \(speed!)")
    print("Does it work?: \(doesItWork!)")
  }
  
}


var bmw = Car()        

bmw.speed = 180
bmw.color = "red"


bmw.run()

bmw.getInfo()

bmw.slowDown(howManyKm: 50)
bmw.getInfo()

bmw.speedUp(howManyKm: 80)
bmw.getInfo()

bmw.stop()
bmw.getInfo()


var sahin = Car()

sahin.color = "white"
sahin.speed = 100

sahin.run()
sahin.getInfo()

sahin.speedUp(howManyKm: 45)
sahin.getInfo()
```
## WHAT WE DID?🤔
- we created a car class
- we have added state (color, speed, doesItWork) and behaviours(run, stop, speedUp, slowDown, getInfo) to this class 
- we created objects from car class (bmw and sahin)
- when you create the object from the car class, it is created with the properties in that class 



```swift
class Bus{
    var capacity:Int?
    var from:String?
    var toWhere:String?
    var currentPassenger:Int?
    
    func takeApassenger(passenger:Int){
        currentPassenger! += passenger
    }
    
    func dropOffpassenger(passenger:Int){
        availablePassenger -= passenger
    }
    
    func getInfo(){
        print("capacity : \(capacity!)")
        print("from : \(from!)")
        print("where : \(where!)")
        print("passenger count: \(currentPassenger!)")
        print("************************")
    }
}
 
var kamilKoc = Bus()
kamilKoc.capacity = 50
kamilKoc.from = "bursa"
kamilKoc.toWhere = "antalya"
kamilKoc.currentPassenger = 10

kamilKoc.getInfo ()

kamilKoc.takeApassenger(passenger: 28)
kamilKoc.getInfo()

kamilKoc.dropOffpassenger(passenger: 27)
kamilKoc.getInfo()
```
**same logic as with the car analogy.**

## Difference Between Class and Structure

- Both structures have similar properties.
- class is a reference type.
- structure is a value type.
- structure has no inheritance property.

**reference type:** Ali and Mehmet use a common file. if Ali changes the data in this file, Mehmet is affected by this change.
better for memory management.

**value type:** if Ali or Mehmet change the information in the file, neither of them is affected by this change. everyone keeps their own file 


