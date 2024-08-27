
# COMPOSITION 💻
- It is generally used for modelling tables in databases. relational database
- Objects formed from other classes (class or structure) can be variables of a class.

```swift
class Persons {
    var name:String?
    var age:Int?
    var address:Address?
    
    init(name:String, age:Int, address:Address){
        self.name = name
        self.age = age
        self.address = address
    }
}

class Address{
    var province :String?
    var district : String?
    
    init(province: String, district: String) {
        
self.province = province
        self.district = district
    }
}

let address = Address(province: "Antalya", ilce: "Demre")

let kisi = Kisiler(name: "Ayşe", age: 20, address: address)
    
print("Person name:   \(person.name!)")
print("Person age:  \(person.age!)")
print("Person province:   \(person.address!.il!)")
print("Person district: \(person.address!.district!)")



class Categories{
    var category_id:Int?
    var category_name:String?
    
    init(category_id: Int, category_name: String) {
        self.category_id = category_id
        self.category_name = category_name
    }
    
}

class Directors{
    var director_id:Int?
    var director_ad:String?
    
    init(director_id: Int, director_name: String) {
        self.director_id = director_id
        self.director_name = director_name
    }
}

class Films{
    var film_id:Int?
    var film_name:String?
    var film_year:Int?
    var category:Categories?
    var director:Directors?
    init(film_id: Int, film_name: String, film_year: Int, category: Categories, director: Directors) {
        self.film_id = film_id
        self.film_name = film_name
        self.film_year = film_year
        self.category = category
        self.director = director
    }
}

var k1 = Categories(category_id: 1, category_name: "Drama")
var k2 = Categories(category_id: 2, category_name: "Comedy")
var k3 = Categories(category_id: 3, category_name: "Science Fiction")

var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Nuri Bilge Ceylan")
var y2 = Directors(director_id: 2, director_name: "Quentin Tarantino")
var y3 = Directors(director_id: 3, director_name: "Christopher Nolan")

var f1 = Movies(film_id: 1, film_name: "Django", film_year: 2013, category: k1, director: y2)
var f2 = Movies(film_id: 2, film_name: "Inceotion", film_year: 2006, category: k3, director: y3)

print("Film id:   \(f1.film_id!)"
print("Film name:     \(f1.film_ad!)")
print("Film year:    \(f1.film_yil!)")
print("Film category: \(f1.category!.category_name!)")
print("Film director:  \(f1.director!.director_name!)")

```

    
