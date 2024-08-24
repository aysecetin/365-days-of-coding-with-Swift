# FUNCTIONS 🧮

- 🤓 Are structures that represent certain operations.
- The purpose of using func is to avoid repetitive code structures.
- Is defined by the word func.
- Makes programming more practical.
- It is useful for reading the code.
- Functions in a class or structure.
- Like properties, it can be accessed if an object is created from the class or structure where it is located.
- There are functions with return values and functions without return values


## FUNCTIONS WITH NO RETURN VALUE 
- Are functions that do not return data to the user of the method that only performs the desired operation.

```swift
func greet(){
    
    let result = "hello ahmet"
    print(result)
}
greet()
```

## FUNCTIONS WITH RETURN VALUE
- Are functions that return data to the user of the method as a result of the operation.

```swift
func greet1() -> String{
    let result = "hi ayşe"
    return result
}
let incomingResult = greet1()
print(incomingResult)
```

## FUNCTION TAKING PARAMETERS
- Parameters are values given to functions from outside.
- Not every function has to have a parameter.
- Defining a parameter is like defining a variable.
- Parameters can be defined more than once with <comma>.
- The ':' sign defines the name and type of the parameter. <message : String>

```swift
func greet2(name : String){
    let result = "hello \(name)"
    print(result)
}

selamla2(name: "beyza")

func sum(){
    let total = 30 + 40
    print("Total : \(total)")
}

sum()

func sum1() -> Int{
    let total = 30 + 40
    return total
}

var t1 = sum1()
print("Summation1 : \(t1)")

func sum2(number1: Int, number2: Int) -> Int {
    let totall = number1 + number2
    return totall
}
var t2 = sum2(number1: 50, number2: 80)
print("Summation2 : \(t2)")
```
## ACCESS TO FUNCTIONS FROM WITHIN THE CLASS 

```swift
class Maths {
    func sum(number1: Int, number2:Int){
        let total = number1 + number2
        print("total: \(total)")
    }
    
    func extract(number1: Double, number2:Double) -> Double {
        return number1 - number2
    }
    
    func multiply(number1: Int, number2:Int, isim:String){
        let sonuc = number1 * number2
        print("the multiplier: \(isim) , result: \(result)")
    }
    
    func divide(number1: Double, number2:Double) -> String{
        return "division: \(number1 / number2)"
        
    }
    
}

var m = Maths()

m.sum(number1: 83, number2: 37)

var c = m.extract(number1: 100.0, number2: 31.0)
print("result: \(c)")

m.multiply(number1: 33, number2: 45, isim: "Ayşe")

print(m.divide(number1: 50.0, number2: 25.0))
```

**What did we do? 🤔**  
- We created a maths class and wrote the operations as functions 
- Then we created an ‘m’ object from this class and provided access to the functions of this class



## OVERLOADING OF METHODS 
- Reuse of methods with the same name.
- The only condition is that the types in the parameter sequence of the method are different.
- It provides parameter diversity in the use of methods.

```swift
class Calculator {
    func sum(number1: Int, number2: Int){
    print("total: \(sayi1 + sayi2)")
    }
 
    func sum(number1: Int, number2: Double){
    print("total: \(Double(sayi1) + sayi2)")
    }
    
    func sum(number1: Double, number2: Int){
    print("total: \(sayi1 + Double(sayi2))")
    }
    
    func sum(number1: Int, number2: Int, name: String){
    print("person who made: \(name), result: \(number1 + number2)")
    }
   
}

var h = Calculator()

h.sum(number1: 23, number2: 32)
h.sum(number1: 32.9, number2: 43)
h.sum(number1: 55, number2: 46.7)
h.sum(number1: 19, number2: 99, name: "ayşe")
```
