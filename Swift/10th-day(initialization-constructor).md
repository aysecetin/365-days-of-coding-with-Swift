# INITIALIZATION - CONSTRUCTOR 👩🏻‍💻

- 🤓 It is the structure required to create an object from a class (class or structure).
- It is defined with the word ‘init’.
- It can take parameters to create an object from a class (class or structure).

```swift 

class Persons{
    var name:String?
    var age:Int?
    init() {
        
    }
    init(name:String, age:Int){ // We did SHADOWING with self
        self.name = name
        self. age = age
    }
}

let person1 = Persons()

person1.name = "mehmet"
person1.age = 48

print(person1.name!)
print(kisi1.age!)

let kisi2 = Kisiler(name: "ayşe", age: 20)
print(person2.name!)
print(person2.age!)
```

