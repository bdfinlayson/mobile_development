//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func doubler(i: Int, a: Int, d: String) -> String {
    return String(i + a * 2) + d
}

doubler(i: 3, a: 10, d: "HELLO!!!")

func thingy(i: Int?) -> Int? {
    if let i = i , i == 10 {
        return i + 1
    } else {
        return 0
    }
}

thingy(i: nil)

thingy(i: 10)
thingy(i: 10)! + 1

func anotherThingy(i: Int?) -> Int? {
    return 10
}

thingy(i: anotherThingy(i: nil))

func double(i: Int) -> Int {
    return i * 2
}

func triple(i: Int) -> Int {
    return i * 3
}

func multiplier(i: Int, x: Int) -> Int {
    return i * x
}

multiplier(i: double(i: 10), x: triple(i: 10))

func arrayDoubler(array: [Int]) -> [Int] {
    var retArray: [Int] = []
    for i in array {
        retArray.append(i * 2)
    }
    return retArray
}

arrayDoubler(array: [1,2,3,4,5])

func sum(array: [Int]) -> Int {
    var retVal: Int = 0
    for i in array {
        retVal += i
    }
    return retVal
}

sum(array: [1,2,3])

var closure = { (array: [Int]) -> Int in
    var retVal: Int = 0
    for i in array {
        retVal += i
    }
    return retVal
}

closure([1,2,3])


// passing functions as arguments V

func apply(array: [Int], function: ([Int]) -> Int) -> Int {
    return function(array)
}

apply(array: [1,2,3], function: sum(array: ))

// trailing closure syntax with the function inside parens

apply(array: [1,2,3], function: {
    (array: [Int]) -> Int in
    var retVal: Int = 0
    for i in array {
        retVal += i
    }
    return retVal
})

// trailing closure syntax with the function outside parens

apply(array: [1,2,3]) {
    (array: [Int]) -> Int in
    var retVal: Int = 0
    for i in array {
        retVal += i
    }
    return retVal
}

var so = [1,2,3].reduce(0) { $0 + $1 }
so

var bo = [1,2,3].map { return $0 + 1 }
bo

var ws = bo.filter { $0 > 3 }
ws

var s = bo.sorted { $0 > $1 }
s

