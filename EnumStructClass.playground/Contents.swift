//: Playground - noun: a place where people can play

import UIKit

enum WeatherType{
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather{
    case .sun:
        return nil
    case .wind(let speed) where speed > 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
    
}

var ans = getHaterStatus(weather: WeatherType.wind(speed: 5))

struct Person{
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "t-shirts", shoes: "shiny")
let other = Person(clothes: "shorts", shoes:"fresh js")
print(taylor.clothes)

class ClassPerson{
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String){
        self.clothes = clothes
        self.shoes = shoes
    }
}

//Class inheritance example

//base class
class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("La la la la")
    }
}

//class that inheritance
class CountrySinger: Singer{
    override func sing(){
        print("Trucks, guitars and liquor")
    }
}
var taylor2 = CountrySinger(name: "Taylor", age: 25)
taylor2.sing()

