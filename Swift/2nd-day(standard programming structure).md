# Standard Programming Structures
🤓Are structures that are similar in all languages.  

Comparison operators   
Controls  
➤if   
➤switch   
Loops    
➤For  
➤While  
Some ready-made commands   
 
 **Controls**

this is the structure where we will talk about where our codes will be shaped towards.

**Loops 🔄**    
a structure that allows us to repeat operations.


### Comparison operators 

```swift
var s1 = 60
var s2 = 50

var y1 = 70
var y2 = 80

print(s1 == s2)// false
print(s1 > s2)// true
print(s1 >= s2)// true
print(s1 < s2)// false
print(s1 <= s2)// false
print(s1 != s2)// true

print(s1>s2 || y1>y2)// true false or ; true -----> or one of them must be true 
print(s1>s2 && y1>y2)// true false and ; false -----> all must be true for true to retur
```

## Control Structure🕹️

### If Structure

```swift
var yas = 20
var name = "Ayşe"

//example 1

if yas >= 18 {
    print("You are of legal age")
}

//example 2 : ELSE

if age >= 18{
    print("You are of legal age")
}else{
    print("You are a minor.")
}

//example 3 : String Comparison

if name == "Ayşe" {
    print("hello Ayşe")
}else{
    print("unknown person")
}
    
//example 4 : ELSE IF

if name == "Ayşe" {
    print("hello Ayşe")
}else if name == "Mehmet"{
    print("hello Mehmet")
}else{
    print("unknown person")
}

//example 5 : Multiple Condition AND

var userName = "admin"
var password = 1234

if(password == 1234 && username == "admin"){
    print("welcome")
}
else{
    print("incorrect entry")
}
    
//example 6 : Multiple Condition OR

var class = 10

if(class == 9 || class == 10 || class == 11 || class == 12){
    print("you can prepare for the 'ayt' exam.")
}

//example 7 : Ternary Conditional
// CONDITION ? CORRECT RESULT : FALSE RESULT

var a = 10
var b = 20

a == b ? print("Equal") : print("Not Equal")// Not Equal
```
**if example(AREA)**

```swift

print("rectangle area (1)") 
print("circle area (2)")

let selection = 2
let shortEdge = 10
let longEdge = 20
let radius= 4

print("your selection: \(selection) ")

if selection == 1{ //rectangle area 🟦
    print("rectangle area")
    print("short edge: \(shortedge)")
    print("long edge: \(longedge)")
    let area = shortEdge*longEdge
    
    print("Result: \(area)")
}

if selection == 2{ //circle area 🔵
    print("circle area")
    print("radius: \(radius)")
    let area = 3.14 * Double(radius) * Double( radius)
     
    print("Result: \(area)")
}
```

**if example(four operations)**

```swift
print("Addition (1)")
print("Subtraction (2)")
print("Multiplication (3)")
print("Division (4)")

let preference = 2

let num1 = 100
let num2 = 20

print("Your preference: \(preference)")

if preference == 1{
    print("Addition: \(num1+num2)")
}else if preference == 2{
    print("Subtraction: \(num1- num2)")
}else if preference == 3 {
    print("Multiplication: \(num1*num2)")
}else if preference == 4{
    print("Division: \(num1/num2)")
}
```

### Switch Structure   

```swift
let day = 5

switch day {
    case 1:
       print("Monday")
    case 2:
        print("Tuesday")
    case 3:
        print("Wednesday")
    case 4:
        print("Thursday")
    case 5:
        print("Friday")
    case 6:
        print("Saturday")
    case 7:
        print("Sunday")
    default:
        print("no such day")
}
```

**Switch example(four operations)**

```swift
print("sum (1)")
print("subtraction (2)")
print("multiply (3)")
print("division (4)")

let preference = 3
let number1 = 100
let number2 = 20

print("your preference: \(preference)")

switch preference{
    case 1:
        print("sum: \(number1 + number2)")
    case 2:
        print("subtraction: \(number1 - number2)")
    case 3:
        print("multiplication: \(number1 * number2)")
    case 4:
        print("division: \(number1 / number2)")
    default
        print("no such operation")
}
```

**switch example(odd-even numbers)**

```swift

let number = 18

var result = number % 2
    
// odd-even numbers with IF
/*
if result == 1{
    print("It is an odd number.")
}
if result == 0{
    print("Even number.")
}*/

//odd-even numbers with SWITCH

switch result{
    case 0:
       print("is an even number.")
    case 1:
        print("is an odd number.")
    default
        print("not certain.")
}
```

## Loop Structure🔄

**Loop Limit Values**
```swift
// between 3 and 6

for i in 3...6{
    print("Loop 1: \(i)")
}

var counter = 3

while countac < 7{
    print("Loop 2: \(counter)")
    counter += 1
    
}

// between 0 and 8 with 2 slips


var start = 0
var end = 8
var slips = 2

for a in stride(from: start, through: end, by: slips){
    print("Loop 3: \(a)")
}//without saying end and start, you can specify directly from 0 to 8 <3

for b in stride(from: 0, through: 8, by: 2){
    print("loop 4: \(b)")
}

var counter1 = 0

while counter1 < 9{
    print("loop 5: \(counter1)")
    counter1 += 2
}

// Decrease by 2 between 8 and 0

for c in stride(from: 8, through: 0, by: -2){
    print("Loop 6: \(c)")
}


var counter2 = 8

while counter2 > -1{
    print("loop 7: \(counter2)")
    counter2 -= 2
}
```
### For Structure

**For Example(Name Repetition)**

```swift
var name = ‘Ayşe’
var last = 100

/*for i in 1...last{
    print(‘\(i).\(name)’)
}*/

var letterCount = name.count
for i in 1...letterCount{
    print(‘\(i).\(name)’)
}
// I can write directly name.count instead of letterCount, I don't need to define it separately.
``` 
### While Structure

**While Example (Data Processing)**
```swift

var data = 5
 
while data > 0{
    print("\(data).data")
    data -= 1
}
``` 

### Break-Continue Structure
```swift


for i in 1...5{
    if i == 3{
        break
    }
    print("loop 1:\(i)")
}
//end loop if i is equal to 3


for i in 1...5{
    if i == 3{
        continue
    }
    print("loop 2:\(i)")
}
// If i is equal to 3, skip 3 and continue

```

### Some Ready-made Commands 

```swift

///RANDOM NUMBER
for _ in 1...9{
    let randomNumber = Int(arc4random_uniform(10))
    //let randomSayi = Int.random(in: 0...9)
  // print(randomNumber)
}

///MATHEMATICAL EXPRESSIONS

let c = ceil(6.5) // rounds to the next higher number
print(c)

let f = floor(6.5) // rounds to a lower number
print(f)

let s = sqrt(4.0) //root number
print(s)

let p = pow(2.0, 3.0) //powered number
print(p)

let a = abs(-10) //absolute value
print(a)

let mx = max(100, 200)
print(mx)

let mn = min(100, 200)
print(mn)

///HISTORICAL EXPRESSIONS

let date = Date()

let calendar = Calendar.current

let year = calendar.component(.year, from: date)
let month = calendar.component(.month, from: date)
let gun = calendar.component(.day, from: date)
let hour = calendar.component(.hour, from: date)
let minute = calendar.component(.minute, from: date)
let second = calendar.component(.second, from: date)

print(year)
print(ay)
print(gun)
print(clock)
print(minute)
print(second)

///UNITS OF MEASUREMENT

let meter = Measurement(value: 50, unit: UnitLength.meters) // 50m
print(meter)

let kilometre = Measurement(value: 1, unit: UnitLength.kilometres) // 1km
print(kilometre)

let result = meter + kilometre
print(result)

let a1 = result.converted(to: .kilometres)
print(a1)
let a2 = result.converted(to: .miles)
print(a2)

let frequency = Measurement(value: 1000, unit: UnitFrequency.kilohertz) // 1000kHz
let c1 = frequency.converted(to: UnitFrequency.gigahertz)
print(c1)

let temperature = Measurement(value: 30, unit: UnitTemperature.celsius)

print(temperature)

let d1 = temperature.converted(to: .fahrenheit)print(d1)

```
