# OBJECT ORIENTED LISTING
## SET

```swift
class Students:Equatable,Hashable{
    var no:Int?
    var name:String?
    var class:String?
    
    init(no: Int, name: String, class: String) {
        self.no = no
        self.name = name
        self.class = class
    }
    var hashValue: Int{
        get{
            return no.hashValue
        }
    }
    static func == (lhs:Students, rhs:Students)->Bool{
        return lhs.no == rhs.no
        
    }
    
}

var o1 = Students(no: 199, name: "Ayşe", sinif: "11C")
var o2 = Students(no: 138, name: "Emine", sinif: "12F")
var o3 = Students(no: 287, name: "Mehmet", sinif: "10C")
var o4 = Students(no: 310, name: "Abdullah", sinif: "9B")
var o5 = Students(no: 140, name: "İclal", sinif: "12D")

var studentsList = Set <Students>()

studentsList.insert(o1)
studentsList.insert(o2)
studentsList.insert(o3)
studentsList.insert(o4)
studentsList.insert(o5)

for student in studentsList {
    print("**********************")
    print("Student no: \(student.no!)")
    print("Student name: \(student.ad!)")
    print("Student class: \(student.sinif!)")
}
```

## DICTIONARY 

```swift
class Students{
    var no:Int?
    var name:String?
    var class:String?
    
    init(no: Int, name: String, class: String) {
        self.no = no
        self.name = name
        self.class = class
    }
}

var o1 = Students(no: 199, name: "Mehmet", class: "11A")
var o2 = Students(no: 242, name: "Emine", class: "10C")
var o3 = Students(no: 287, name: "İclal", class: "11F")
var o4 = Students(no: 310, name: "Abdullah", class: "10B")
var o5 = Students(no: 115, name: "Mehmet", class: "12D")
 
var studentsList = [Int:Students]()
studentsList[o1.no!] = o1
studentsList[o2.no!] = o2
studentsList[o3.no!] = o3
studentsList[o4.no!] = o4
studentsList[o5.no!] = o5

print(studentsList[199]!.name!)

for (studentNo,object) in studentsList{
   print("****************")
    print("Öğrenci No      : \(studentNo)")
    print("Öğrenci name      : \(object.name!)")
    print("Öğrenci Sınıf   : \(object.class!)")

}

```
