# OVERRIDE  

💻💻💻  

- In an inheritance relationship, the methods of the superclass are reused by the subclass.  
```swift
class Animals{
    func makeSound(){
        print("no voice")
    }
}

class Mammal:Animals{
    
}

class Cat:Mammal{
    override func makeSound(){
        print("miuw miuw")
    }
}

class Dog:Mammal{
    override func makeSound() {
        print("hav hav")
    }
}

var h = Animals()

h.makeSound()

var cat = Cat()
cat.makeSound()

var dog = Dog()
dog.makeSound()
```
