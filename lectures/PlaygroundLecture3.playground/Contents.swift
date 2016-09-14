//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

str.description

var num = 8

num.description

str = num.description

let constStr = str

// constStr = 'cannot be changed'

str = "\("this is interpolation")"

str.uppercased()

let const = "PREFERABLE OVER VAR"

str.replacingOccurrences(of: "interpolation", with: "something")

const.replacingOccurrences(of: "PREFERABLE", with: "prefered")

str.append(" wowza")

Bool.init()
Int.init()
String.init()
Float.init(3.000001) //this is the max number of decimal places
Double.init(2.000000000000001) //this is the max number of decimal places
Double(2.000000000000001) // you can do the same thing without calling .init()
Array.init([1239])
Array(["ba"])
var blah = ["blah": 1]
String(describing: blah)
object_getClassName(blah)

var view = UIView(frame: CGRect(x: 0.0, y:0.0, width: 200.00, height: 200.00))
view.backgroundColor = UIColor.blue

let dict = ["blah": "wtf"]

if dict["blah"] == "wtf" {
    print ("that's correct")
}
else {
    print ("go away")
}

// dict.0 dictionaries are not callable like tuples

var someArray = [1,2,3,4,5]

for i in someArray {
    print ("\(i)")
}

var i = 0

while i < 10 {
    i += 1
    print ("I'm less than ten")
}

i = 0

repeat {
    i += 1
    print ("omg wow")
    
} while i < 12

var thing = 12

switch thing {
case 1:
  print ("holy molly")
case 2,3,4,5,6:
  print ("hey hey!")
case let wow where thing < 1:
  print ("\(wow) wtf!!!")
case 10..<20:
 print ("heebe jeebe")
default:
  print ("wow!")
}

var stringy: String = "c"

switch stringy {
case "a"..."c":
  print ("it's a c!")
case "d"..."f":
  print ("hemma wwo")
default:
  print ("something wow")
}

var pos = (3, 2)
var col = pos.0
var otherPos = pos.1

pos.self


var otherThing = (x: 2, y: 8)
otherThing.x

let weeew:Int? = nil // question mark is saying either this or it is nil, it produces an Optional type

if (weeew != nil) {
    print("not nil! wow")
}
weeew.self

var number: Int? = 9 // the question mark implies a default value
// number = 10


if let number = number , number == 10 { // the comma there is taking the place of the 'where' clause, the 'if let' construct says 'take the ? mark off', the let acts as a filter on optional objects because the same operations are not available on the regular non optional objects
    print ("got a number!")
}

number! + 10 // the bang 'unwraps' the optional and performs the regular + operation that would be available on an Int object. However if number is not an Int then the compiler will throw an error

var athing: Int? = nil
athing = 1234

if let blahwow = athing {
    print ("blalssa")
    blahwow + 1
}



let d:[String:Int] = ["a": 1, "b": 2, "c": 3]
d["asd"]
let v = d["asdga"] // calling an invalid key value on d returns an Int? optional type

// you cannot perform addition on an Int? object
// v + 1

v.self
