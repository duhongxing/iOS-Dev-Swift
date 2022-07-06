//
//  Base.swift
//  ReLearnSwiftDemo
//
//  Created by 杜红星 on 2021/8/13.
//

import Foundation

struct Book {
    var name: String = ""
    var price: Int = 0
    
    func description() -> String {
        "\(name) \(price)￥"
    }

    func bookName() -> String {
        self.name
    }
}

func swapTarget<T>(a: inout T, b : inout T) {
    (a, b) = (b, a)
}

struct HXSetTest {
    static func test() {

        let array = [2,5,9,1,20]
        print(array.filter(){ $0 > 5})

    }
}

protocol HXTestProtocol {
    init(name: String)
}

class HXTestClass {
    var name: String = ""
    required init(name: String) {
        self.name = name
    }

    func swapValues(_ a: inout Int, _ b: inout Int) {
        let temp = a
        a = b
        b = temp
    }
}

class HXTestSubClass: HXTestClass, HXTestProtocol {
    required init(name: String) {
        super.init(name: name)
        self.name = name
    }
}

//func max<T>(_ x: T, _ y: T) -> T where T: Comparable {
    //
//}
