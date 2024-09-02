# _CLOSURE_ 📂

- In simple terms, they are ready-made coding structures held together with parentheses.
- They are code structures that work like functions.
- It is the same as the lambda structure in Java and other languages.

```swift

let expression = {
    print(“welcome to closure.”)
}

expression()

let aggregation = {
    (sayi1:Int, sayi2:Int)->Int in
    return number1+number2
}

let result = sum(10,20)

print(result)

```


## _WRITING A CONDITION WITH CLOSURE_ 📂

```swift

var numbers:[Int] = [5, 10, -6, 75, 20]

let sort1 = numbers.sorted(by: {number1, number2 in number1 > number2})

let sort2 = numbers.sorted(by: {n1, n2 in n1 < n2})

let sort3 = numbers.sorted(by: {$0 > $1})

let sort4 = numbers.sorted(by: < ) /// not closure!!!

print(sort1)
print(sort2)
print(sort3)
print(sort4)

```
