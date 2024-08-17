
# OPTIONAL ⌥

🤓If a variable or constant is to be used without taking a value, it is always used as optional.

For example, you cannot add Int? and Int Because the value of the variable of type Int? will output Optional(value).
```swift
let value1: Int = 1
let value2: Int? = 2
print(value1 + value2) //gives an error and the application crashes 
```

To understand this situation, think of an optional type variable or constant as a box.   
There is a value inside or not. We cannot know this without opening the box. There are several methods to open the box.   


## 1- 📦Forced Unwrapping
For this, a ! (exclamation) sign is placed at the end of the variable. By doing this, we tell the compiler that we are sure that there is a value in the optional variable. Now the value of the variable is Optional(2), but not  only 2. But of course this method has its drawbacks. If the value of the variable is nil, the application will crash.  

```swift
print(value1 !+ value2!) //as a result, the number 3 is printed on the screen.
```

To open the box safely, we will use the if condition.   
This will test whether the variable has a value (or is nil).  


## 2- 🎁Optional Binding

The second option is called *Optional Binding*. It is actually the same as Forced Unwrapping. It is just more secure.  

If the optional variable has a value, the value obtained by opening the variable is given to a new variable. If the value is nil, nil is printed as output. In addition, it is not necessary to put a ! sign at the end of the variable when printing the value.

```swift
if let newValue == value2 {
  print(value2)
 } else {
  print(“nil”)
}
```

**Optional Example**  
🧐🧐🧐
```swift

var str:String? 
/// here it can be nil or it can take a value, it says optional, check it so that the application does not crash

str = "ayşe"

if str != nil{ ///str does not enter if when it is nil because it is called(!=) if it is not equal.
    print(str!) /// when we assign a value, the value Optional(ayşe) is returned. optional, if you are sure that the value is not nil, we put ! at the end print(str!)this process is called 'optional unwrapping'
}else{
    print("str contains nil value.") /// When it is nil, it directly enters else and gives the warning.
}

```

**Optional Binding Example**  
🧐🧐🧐
```swift
var str:String?

str = "hello"

if let temp = str{ ////if let we do automatic optional unwrapping. If str is not a nil value, the if query returns true and str is assigned to temp
    print(temp)
}else{ ///
    print("str contains nil value")
}

var text = "48t"

if let numberi = Int(text){
    print(number)
}else{
    print("string expression has different content than numeric data")
}

```
