# 1st day

## Variables
Variables are the most basic coding structure in all programming languages.  
Modern languages express the values stored in memory with variables.  
We do not need to specify a type for variables in Swift  


# Variable Definition

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


## Usage 

**String and Integer**

```swift
//Variable type is String

var name = "Ayşe"

// Variable type is Integer

var yas = 22

print(name) // Ayşe
print(yas) // 22
```

**Multilines String, Double, Float and Boolean**
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






















