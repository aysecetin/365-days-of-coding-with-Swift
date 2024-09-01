# _PROTOCOL_ 👩🏻‍💻

- Can be used in both class and structure.
- A class (class or structure) can have more than one protocol
- They are appended with ':'.
- We can think of them as ready drafts.
- Interface structure in java
- Protocols add properties to classes.

```swift
protocol Protocol1{
    var variable1:Int{ get set}
    
    func method1()
    func method2()->String
}

class ClassA:Protocol1{
    var variable1 = 10
    
    func method1() {
        print(“protocol hello”)
    }
   
    func method2() -> String {
        return “protocol work dear”
    }
}
```

- When you get a protocol, it forces you to use everything in it, for example, it gives an error if you can't assign a value to the variable, or it gives an error if you don't use methods.

```swift
var a = ClassA()
print(a.variable1)
a.method1()
print(a.method2())

```

## _PROTOCOL EXAMPLE_

```swift 
protocol Squeezeable {
    func howToSqueez()
}
protocol Eatable{
    func howToEat()
}

class Lion{
    
}

class Chicken:Eatable{
    func howToEat() {
        print(“Roast in the oven”)
    }
}

class Apple:Eatable,Squeezable{
    
    func howToEat() {
        print(“Slice and eat”)
    }
    func howToSqueez() {
        print(“Squeeze with Blender”)
    }
}

class AmasyaApple :Apple{
    override func howToEat() {
        print(“Wash and eat”)
    }
}

var lion = Lion()
var amasyaApple:Apple = AmasyaApple()
var apple = Apple()
var chicken:Eatable = Chicken()

var objects = [lion, amasyaApple, apple, chicken] as [Any]

for object in objects{
    
    if object is Eatable{
        (object as! Eatable).howToEat()
    }
    if object is Squeezeable{
        (object as! Squeezeable).howToSqueez()
    }
}

```


