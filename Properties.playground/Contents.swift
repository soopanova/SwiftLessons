//: Playground - noun: a place where people can play

import UIKit
//Basic property usage
//struct Person{
//    var clothes: String
//    var shoes: String
//    
//    func describe(){
//        print("I like wearing \(clothes) with \(shoes)")
//    }
//}
//
//let solange = Person(clothes: "T-Shirts", shoes: "sneakers")
//let other = Person(clothes: "skirts", shoes: "heels")
//
//solange.describe()
//other.describe()

struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "short skirts”
