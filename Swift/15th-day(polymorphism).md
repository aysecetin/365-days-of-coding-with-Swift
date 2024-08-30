_# POLYMORPHISM_
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
