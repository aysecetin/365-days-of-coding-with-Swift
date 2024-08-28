
# *INHERITENCE* 🧬

## *OOP RULE - INHERITENCE*

- It is used to derive another class from an existing class.
- increases the reusability of the code.
- only valid for ‘class’.
- It is identified by the ‘ : ’ sign.
- can be the only inheritance of a class
- more than one class cannot be linked to a class by inheritance.
- A superclass is called a *‘superclass’*.
- A subclass is called a *'subclass’*.
- subclass can access superclasses. superclass CANNOT access subclasses


```swift
class Vehicle{
    var colour:String?
    var gear:String?
    
    init(colour: String, gear: String) {
        self.colour = colour
        self.gear = gear
    }
}

class Car:Vehicle{
    var bodyType:String?
    
    init(bodyType: String,colour: String, gear: String) {
        self.bodyType = bodyType
        
        super.init(colour: colour, gear: gear)
    }
}

class Nissan:Car{
    var model:String?
    
    init(model: String, bodyType: String,colour: String, gear: String) {
        self.model = model
        
        super.init(bodyType: bodyType, colour: colour, gear: gear)
    }
}

var araba = Araba(bodyType: "sedan", colour: "red", gear: "automatic")

print(car.bodyType!)
print(car.colour!)
print(car.gear!)
```

- The object created from the car class can access the properties (colour, gear) in the car class.

```swift

var arac = arac(colour: "purple", gear: "manual")

print(vehicle.colour!)
print(arac.gear!)
```

- the object created from the vehicle class CANNOT access the properties (e.g. bodyType) in the car class
