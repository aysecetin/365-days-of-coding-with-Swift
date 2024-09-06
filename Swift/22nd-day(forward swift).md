
# GUARD
- Guard is the same as if structure.
- It operates according to the condition like if.
- Guard works like the opposite of if.
-It works when the condition is false, there is no true condition.
-It is used with ‘return’ or ‘throw’ expression, (it will run because it finds an error * to stop the method it is running, so if there is an error, it should stop the code *, so it is usually included in the method.

```swift
guard true else{
    some code
    some code
}
statement just below if 
```

## COAST
### IF

```swift
func personRecognition(name:String){
    if name == ‘ahmet’{
        print(‘hello ahmet’)
    }else{
        print(‘unrecognised person’)
    }
}

personRecognition(name: ‘ahmet’)
```

### GUARD

```swift
func personRecognition(name:String){
    guard name == "ahmet" else{  //if not equal to ahmet
        print("unrecognised person")
        return  // terminates the method if an error occurs or the condition is not met.
    }
    print("hello ahmet")
}

personRecognition(name: "ahmett")

func bigLetterMake(str:String?){
    if let temp = str{
        print(temp.uppercased())
    }else{
        print("str is nil. cannot be processed.")
        return
    }
}

bigLetterMake(str: "ayşe")
bigLetterMake(str: nil)

func buyukYap(str1:String?){
    guard let temp = str1, temp.count > 0 else{// two conditions can be written with commas.
        print("str is nil. no operation.")
        return
    }
    
    print(temp.uppercased())
}

buyukYap(str1: "ismail")
```


# DO-TRY-CATCH Throw Usage 

```swift
enum Errors:Error{
    case zeroDivisionError
}

func divide(s1:Int,s2:Int) throws -> Int{
    if s2 == 0 {
        throw Errors.zeroDivisionError
    }
    return s1 / s2
}

var s1 = 10
var s2 = 0
```
**do - try - catch**

```swift
do {
    let result = try divide(s1: s1, s2: s2)
    print(result)
}catch Errors.zeroDivisionError {
    print("the number is not divisible by zero.")
}
```

 **try?**

```swift
let result = try? divide(s1: s1, s2: s2)


if result == nil{
    print("result is nil because an error occurred.")
}else{
    print("no error, result: \(result!)")
}
```

# DISPATCH QUEUE

```swift
let queue1 = DispatchQueue(label: "etiket1",qos: DispatchQoS.userInitiated )
```

- Since it has synchronous (SYNC) feature, first thread and then main thred worked.
- If we do async, both will run at the same time

```swift 
queue1.sync {
    for i in 1...10 {
        print("Thread: \(i)")
    }
}

for i in 100...110 {
    print("Main: \(i)")
}
```

 **THREAD DELAY**
 
 ```swift
var delaySecond: DispatchTimeInterval = .seconds(2)
print(Date())

queue1.asyncAfter(deadline: now() + delaySecond,){
    print(Date())
}
```

