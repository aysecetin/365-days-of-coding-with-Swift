# 1st day

## Variables
Variables are the most basic coding structure in all programming languages.  
Modern languages express the values stored in memory with variables.  
We do not need to specify a type for variables in Swift  


# 🤓Variable Definition

The following table describes how a variable is defined:

| Variable Token     | Variable Name | Assignment Operator | Variable Value  |
|--------------------|--------------|----------------------|-----------------|
| `var`              | `number`     | `=`                  | `222`            |


This definition is made as follows:
```swift
var number = 222

If you want to specify a type, you use : (type specifier)

//example: 
var number : Int = 222
```
## Data Types

Int: Negative and positive integers, including 0    
UInt: Positive integers including 0  
Double, Float: decimal numbers (Double larger value)  
String: entries  
Character: letters  
Bool: true or false  


## 🛠️Usage 

**String and Integer**

```swift
//Variable type is String

var name = "Ayşe"

// Variable type is Integer

var age = 22

print(name) // Ayşe
print(age) // 22
```

**📝Multilines String, Double, Float and Boolean**
```swift

//Multilines String usage
var favoritePoem = """  //poetry : the road not taken 

Two roads diverged in a yellow wood,
And sorry I could not travel both
And be one traveler, long I stood
And looked down one as far as I could
To where it bent in the undergrowth;
"""

// double usage
var doubleValue = 13.8769

// boolean usage
var isHidden = true // boolean return true or false value
```

```swift
//A variable can be added to the output with the \() expression in the string expression


var name = Ayşe
var year = 20
  print("\(name) has been living in Antalya for \(year) years. ")
```

**Constants**

```swift
let pi = 3.0 // let cannot be changed afterwards. so it keeps exactly as much space in memory as needed. it is advantageous to define variables that we will not change later with let.

var x = 8.0

var t = x * pi

print(t)
```

**🏃🏻‍♀️Escape Characters and Comment Lines🏃🏻‍♀** 

```swift
var text1 = "Mehmet said /“hello, how are you/”."

print(text1)

var text2 = "Hello, in this \n\"ios\"\ttraining we will learn\'swift\' language."
print(text2)

/*
*/ //---> comment block
```

**Arithmetic Operators**

```swift
// circle area

let pi = 3.14

let radius = 2.0

let area = pi * radius * radius

print(area)

//F = m x a
var m = 12.5

var a = 10.0

var f = m * a

print(f)

// Δx (delta x)

var v = 12.7
var v0 = 23.56
var t = 3.5
var x1 = ((v+v0)/2)*t
print(x1)

var x2 = (v0*t) + (a*t*t)/2
print(x2)


//abbreviations

var y = 10
y = y + 2
print(y)

y+=2 // y = y + 2
print(y)

y*=4
print(y)

y-=38
print(y)

y/=2
print(y)

```
**Type Conversion**

```swift
// digital to digital conversion

var i:Int = 42
var d:Double = 42.45
var f:Float = 42.89
var result1:Int = Int(d)
var result2:Double = Double(i)
var result3:Int = Int(f)

print(result1)
print(result2)
print(result3)

// digital to text conversion

var str1:String = String(i)
var str2:String = String(d)
var str3:String = String(f)

print(str1)
print(str2)
print(str3)

//text to digital conversion

//textual expressions can contain letters and characters such as 28, 48t, +90543, h5423, so we should check them with the ‘if let’ structure.

var yazi1 = "34"

if let num1 = Int(text1){
    print(num1)
}

var text2 = "34.56"
 
if let num2= Double(text2){
    print(num2)
}

var text3 = "48T"
 
if let num3 = Int(text3){
    print(num3)
}
```

**Tuples**

```swift
// DATA READING 🤓

var person = (‘ahmet’, ‘aksoy’) //----> if you see straight brackets like this, understand that it is tuples😉!!!
/*
print(person.0) ahmet
print(person.1) aksoy
*/

var name = person.0
var surname = person.1

print(name)
print(surname)

var dot = (x:10,y:20)
print(dot.x)
print(dot.y)

// DATA ASSIGNMENT 📎

person.0 = ‘mehmet’
print(person)

dot.x = 999
print(dot)

var errorMessage = (404, ‘Not Found’)
var (code , message) = errorMessage

print(code)
print(message)

// 🖇 INTERIOR

var student:(Int,(Bool,String)) = (1256,(true, ‘ahmet’))
print(student.0)
print(student.1.0)
print(student.1.1)
```















