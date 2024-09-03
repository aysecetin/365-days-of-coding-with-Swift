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

**RATION CARD APPLICATION**


```swift
class LectureGrades {
    var course:String?
    var grade:Int?
    
    init(course: String, grade: Int) {
        self.course = course
        self.grade = grade
    }
}

var dn1 = LectureGrades(course: “History”, grade: 20)
var dn2 = LectureGrades(course: “Physics”, grade: 80)
var dn3 = LectureGrades(course: “Math”, grade: 100)
var dn4 = LectureGrades(course: “Chemistry”, grade: 50)
var dn5 = LectureGrades(course: “Biology”, grade: 40)

var LectureGradesList = [LectureGrades]()

lectureGradesList.append(dn1)
lectureGradesList.append(dn2)
lectureGradesList.append(dn3)
lectureGradesList.append(dn4)
lectureGradesList.append(dn5)

var total = 0

for dn in lectureGradesList{
    print("\(dn.course!) : \(dn. grade!)”)
    total = total + dn.note!
}

print(“*********************”)
let average = total / lectureGradesList.count
print("Average: \(average)")

if average >= 50 {
    print(“You passed the class”)
}else {
    print(“You failed.”)
}
```

**COMPOSITION**

```swift

class Adres{
    var il:String?
    var ilce:String?
    
    init(il: String, ilce: String) {
        self.il = il
        self.ilce = ilce
    }
}
class Personel{
    var personelNo:Int?
    var personelad:String?
    var personelAdres:Adres?
    
    init(personelNo: Int, personelad: String, personelAdres:Adres) {
        self.personelNo = personelNo
        self.personelad = personelad
        self.personelAdres = personelAdres
    }
}

var adres1 = Adres(il: "Bursa", ilce: "Osmangazi")
var adres2 = Adres(il: "Antalya", ilce: "İbradı")
var adres3 = Adres(il: "Denizli", ilce: "Pamukkale")
var adres4 = Adres(il: "İstanbul", ilce: "Kadıköy")
var adres5 = Adres(il: "İzmir", ilce: "Bornova")

var personel1 = Personel(personelNo: 110, personelad: "Ayşe", personelAdres: adres3)
var personel2 = Personel(personelNo: 100, personelad: "İsmail", personelAdres: adres2)
var personel3 = Personel(personelNo: 90, personelad: "Güneş", personelAdres: adres5)
var personel4 = Personel(personelNo: 130, personelad: "Furkan", personelAdres: adres4)

var personelListesi = [Personel]()

personelListesi.append(personel1)
personelListesi.append(personel2)
personelListesi.append(personel3)
personelListesi.append(personel4)


for p in personelListesi{
    print("**********************")
    print("Personel No: \(p.personelNo!)")
    print("Personel Ad: \(p.personelad!)")
    print("Personel Adres")
    print("Personel İl: \(p.personelAdres!.il!)")
    print("Personel İlçe: \(p.personelAdres!.ilce!)")
}
```




