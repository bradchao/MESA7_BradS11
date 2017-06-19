//
//  main.swift
//  BradS11
//
//  Created by iii on 2017/6/19.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

// 屬性
extension Brad01 {
    var y:Int { return x * 2 }
}

var Obj1 = Brad01()
print(Obj1.y)

extension Double {
    var m: Double {return self}
    var km: Double {return self * 1000.0 }
    var cm: Double { return self / 100.0 }
}
var len = 123.0
print(len.m)
print(len.km)
print(len.cm)
var len2 = 100.0
var len3 = 1.km + 4.cm
print(len3.m)

extension Rect {
    var cx:Int { return x + w / 2}
    var cy:Int { return y + h / 2}
}

extension Brad01 {
    convenience init(x:Int){
        self.init()
        self.x = x
    }
}
var Obj2 = Brad01(x:4)
print(Obj2.x)
var Obj3 = Brad01()
print(Obj3.x)

extension Brad01 {
    func m2(){
        x += 4
        print("Brad01:m2()x = \(x)")
    }
}
var Obj4 = Brad01()
Obj4.m2()

extension Brad02 {
    mutating func m2(){
        x += 4
        print("Brad02:m2(): x = \(x)")
    }
}
var Obj5 = Brad02()
Obj5.m2()

//d = 1; 172 - 100(172 % 100(10*10)) ==> 72


extension Int {
    subscript(d:Int)->Int {
        var x1 = 1
        for _ in 0...d {
            x1 *= 10
        }
        var x2 = 1
        for _ in 0..<d {
            x2 *= 10
        }
        let x3 = self % x1
        print("\(x1) , \(x2), 1==> \(x3)")
        let ret = x3 / x2
        print("\(x3) , \(x2), 2==> \(ret)")
        
        return ret
    }
}
print(123456789[5])











