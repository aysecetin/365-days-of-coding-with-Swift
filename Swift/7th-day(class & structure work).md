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
better for storage management.

**value type:** if Ali or Mehmet change the information in the file, neither of them is affected by this change. everyone keeps their own file 

### LAZY FEATURE

- Is put in the second plan as storage priority.
- It is used before variables that are var, that is, variable.
- The variable to be lazy must have an initial value, it cannot be an empty variable.

```swift
class Example {
    lazy var no = 39
}

var object = Example()
print(object.no)
```

### CALCULATION FEATURE

- Are variables used for calculation, not storage.  
- Performs operations related to variables inside the class.  
- Closure is used in the structure.'{}' 

```swift
class Maths{
    var x = 10
    var y = 20
    
    var collect:Int{
        get{
            return x + y
        }
    }
}

var object = Maths()
print(object.sum)

class Salary {
    var salary = 10000.0
    var bonus = 1.10
    
    var weeklySalaryCalculation:Double{
        get{
            return (salary*bonus)/52
        }
        
        set (newweeksalary){
            self.salary = newweeklysalary * 52
        }
    }
}

var m = Salary()
print(m.weeklySalaryCalculation)

m.weeklySalaryCalculation = 600
print(m.salary)

```
