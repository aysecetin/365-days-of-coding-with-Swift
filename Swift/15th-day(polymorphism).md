# *POLYMORPHISM*
- For polymorphism to be polymorphism, there must be a inheritance relationship between the two classes.
- Is used to provide a more inclusive usage.
- Polymorphism can be used to get more inclusive data, especially in the parameters of methods.
- Looks like a superclass and behaves like a subclass.

```swift
class Animal{
    func makeSound(){
        print(“no sound”)
    }
}

class Mammal:Animal{
    
}

class Cat:Mammal{
    override func makeSound(){
        print(“meow meow meow”)
    }
}

class Kopek:Mammal{
    override func makeSound() {
        print(“woof woof”)
    }
}

var h = Animal()

h.makeSound()

var cat = Cat()
cat.makeSound()

var dog = Dog()
dog.makeSound()

var animal:Animal = Dog()
animal.makeSound()

```

_it looks like animal class but it is actually dog class_

-----------------------------

# *TYPE TRANSFORMATION OF OBJECTS*

```swift
class Ev{
    var windowNumber:Int?
    
    init(windowNumber: Int) {
        self.windowNumber = windowNumber
    }
}

class Saray:Home{
    var towerNumber:Int?
    
    init(towerNumber: Int,windowNumber: Int) {
        self.towerNumber = towerNumber
        super.init(windowNumber: windowNumber)
    }
}

class Villa:Home{
    var garageExists :Bool?
    
    init(garageExists: Bool,windowNumber: Int) {
        self.garageExists = garageExists
        super.init(windowNumber: windowNumber)
    }
}

var topkapiSarayi = Palace(towerNumber: 5, windowNumber: 30)
var bogazVilla = Villa(garageExists: true, windowNumber: 15)

print(topkapiPalace.towerNumber!)
print(topkapiPalace.windowNumber!)

print(bogazVilla.garageExists!)
print(bogazVilla.windowNumber!)


/// type checking is done with is. true gives false information.

let palace1: Palace = Palace(towerNumber: 2, windowNumber: 300)

if palace1 is Palace {
    print(“it is a palace!”)
}else{
    print(“not!”)
}
```

