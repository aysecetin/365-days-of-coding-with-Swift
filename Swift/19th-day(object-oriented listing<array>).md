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
