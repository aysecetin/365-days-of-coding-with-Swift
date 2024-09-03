# OBJECT ORIENTED LISTING

### ARRAY

**STUDENTS APPLICATION🤓📚**

```swift
class Students {
    var no: Int?
    var name: String?
    var class:String?
    
    init(no: Int, name: String, class: String) {
        self.no = no
        self.name = name
        self.class = class
    }
}

var o1 = Students(no: 718, name: “Gonca”, class: “10B”)
var o2 = Students(no: 725, name: “Ayşe”, class: “12D”)
var o3 = Students(no: 676, name: “Ismail”, class: “12D”)
var o4 = Students(no: 652, name: “Dilan”, class: “11D”)
var o5 = Students(no: 687, name: “Orçun”, class: “10C”)

var studentList = [Students]()

studentList.append(o1)
studentList.append(o2)
studentList.append(o3)
studentList.append(o4)
studentList.append(o5)

for student in studentList{

    print(“***********”)
    print("Student No : \(student.no!)")
    print("Student Name : \(student.ad!)")
    print("Student Class: \(student.class!)")
}

}
```

**SORT METHOD**

```swift
class People{
    var personName:String?
    var personNo:Int?
    
    init(personName:String, personNo:Int){
        self.personName = personName
        self.personNo = personNo
    }
}

let kisi1 = Kisiler(personName: “ahmet”, personNo: 1)
let kisi2 = Kisiler(personName: “zeynep”, personNo: 2)
let kisi3 = Kisiler(personName: “berna”, personNo: 3)

var peopleArray = [People]()

peopleArray.append(person1)
peopleArray.append(person2)
peopleArray.append(person3)


print(“Before”)
for k in peopleArray{
    print(“\(k.personNo!) - \(k.personName!)”)
    }


print(“numeric big to small”)

let sort1 = peopleArray.sorted(by: {$0.personNo! > $1.personNo!} )
for k in sort1 {
    print(“\(k.personNo!) - \(k.personName!)”)
    }

print(“numeric small to large”)

let sort2 = peopleArray.sorted(by: {$0.personNo! < $1.personNo!} )
for k in sort2 {
    print(“\(k.personNo!) - \(k.personName!)”)
    }

print(“From lowercase to uppercase”)

let sort3 = kisilerArray.sorted(by: {$0.kisiAd! < $1.kisiAd!} )
for k in sort3 {
    print(“\(k.personNo!) - \(k.personName!)”)
    }

```


