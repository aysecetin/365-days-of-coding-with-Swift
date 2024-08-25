### Homework Temperature Conversion
--------------------------------------
Write a method that converts the degree entered as a parameter to fahrenheit and returns it back.

*what I did*

```swift
func temperature(degree d1:Double)->Double{
    var fahrenheit = d1 * 1.8 + 32
    return fahrenheit
}
var t1 = temperature(degree: 15.0)
print("Temperature: \(t1) fahreinheit.")
```
**************************************************

*what the teacher did*

```swift
class Homework1{
    func transform(degree:Double)->Double{
        let fahrenheit = degree*1.8 + 32
        return fahrenheit
    }
}

let o1 = Homework1()

let result = o1.transform(degree: 30.0)
print("fahreinheit: \(result)")
```

### Homework Environmental Calculation

--------------------------------------

Write a method that calculates the perimeter of a rectangle whose sides are entered as parameters.

*what I did*  

*I wrote a method that calculates and returns. but it would be fine if I made it void, the question did not say to return it :)*

```swift
class Homework2{
    func cevreCalculate(shortEdge s:Int, longEdge l:Int)->Int{
        let cevre = s*2 + l*2
        return cevre
    }
}

let c1 = Homework2()
let result = c1.cevreCalculate(shortEdge: 22, longEdge: 33)
print("Perimeter of the rectangle: \(result)")
```
**************************************************

*what the teacher did*

```swift
class Homework2{
    func cevre(shortEdge:Int, longEdge:Int){
        let CevreCalculus = 2*shortEdge + 2*longEdge
        print("Perimeter of the Rectangle: \(cevreHesabi)")
    }
}

let h2 = Homework2()
h2.cevre(short side: 30, long side: 40)
```


### Homework Factorial Calculation
--------------------------------------

Write a method that calculates and returns the factorial of the number entered as a parameter.
*what I did*

```swift
class Homework3{

    func factorialCalculus(number:Int)->Int{
        var factorial = 1
        for s in 1...number{
            factorial = factorial*s
        }
        return factorial
    }
}

let h3 = Homework3()
h3.factorialCalculus(number: 5)
```
*I forgot to print* 🫠🥴  

**************************************************

*what the teacher did*

```swift
class Homework3{
    func FactorialCalculation(number:Int)->Int{
        var result = 1
        for i in 1...sayi {
            result = result*i
        }
        return result
    }
}

let h3 = Homework3()
let incomingData = h3.factorialCalculation(number: 6)
print("Factorial:\(incomingData)")
```

### Homework Finding Letter Number
------------------------------------------

👩🏻‍💻 For the word and letter entered as a parameter, the number of letters in the word

*I couldn't do it myself*

```swift
class Homework4 {
    func findNumberLetters(word:String, letter:Character){
        var result = 0
        for k in word {
           if k == letter {
                result = result + 1
            }
        }
        print("Number of letters \(letter) in the word: \(result)")
    }
}

let k1 = Homework4()
k1.findNumberLetters(word: "undecided", letter: "e")
```


### Homework Sum of Interior Angles 
------------------------------------------

💻Write the method that calculates and returns the sum of the interior angles according to the number of sides entered as parameters.

*what I did* 🥰

```swift
class Homework5{
    func sumOfinteriorAngle(edgeNumber:Int)->Int{
        let sum = (edgeNumber - 2) * 180
        return sum
    }
}
let a1 = Homework5()
print("Sum of interior angles: \(a1.sumOfinteriorAngle(edgeNumber: 3))")
```
**********
*what the teacher did*

```swift
class Homework_5{
    func sumOfinteriorAngle(EdgeScore : Int)->Int{
        let total = (EdgeSum - 2) * 180
        return total
    }
}

let h5 = Homework_5()
let result = h5.sumOfinteriorAngle(EdgeSize: 3)
print("Sum of Interior Angles: \(result)")
```

### Homework Salary Calculation
--------------------------------------

Write the method that calculates the salary according to the number of days entered as a parameter and returns the obtained value.
- Can work 8 hours a day.
- Working hour fee 10₺
- Overtime hourly rate 20₺
- Over 160 hours is considered overtime.

*what I did* 🤓

```swift
class Homework6{
    func salaryCalculate(day:Int)->Int{
        var salary = 1
        salary = day * 8 * 10
        if( day > 20 ){
            salary = (20*8*10) + ( day - 20) * 8 * 20
        }
    return salary
    }
}

let h6 = Homework6()
let incomingData = h6.salaryCalculate(day: 25)
print("Salary: \(incomingData)₺")
```
*******************************************
*what the teacher did*


```swift
class Homework6{
    func salaryCalculation(dayNumber:Int)->Int{
        let workingHours = number of days*8
        var salary = 0
        
        if workingTime > 160{
            let overtime = workingHours - 160
            salary = 160 * 10 + overtime * 20
        }else{
            salary = workingHours * 10
        }
      return salary
    }
}

let h6 = Homework6()
let result = h6.salaryCalculation(dayNumber: 19)
print("Salary: \(result)₺")

```

### Homework Calculate Internet Fee
--------------------------------------

Write the method that calculates and returns the fee according to the quota amount entered as a parameter.
- 50GB 100₺
- 4₺ per 1GB after quota exceeding
*(don't forget to use if else loop in such questions, dear🥰)*

*what the teacher did*

```swift
class Odev7{
    func internetFeeCalculate(GB:Int)->Int{
        var fee = 0
        
        if GB > 50{
            let quotaMore = GB - 50
            fee = 100 + quotaMore * 4
            
        }else{
            fee = 100
        }
        return fee
    }
}

let o7 = Odev7()
print("Internet Fee: \(o7.internetFeeCalculate(GB: 28))₺")
```
