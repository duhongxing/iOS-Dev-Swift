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
        return "\(name) \(price)￥"
    }
}

func swapTarget<T>(a: inout T, b : inout T) {
    (a, b) = (b, a)
}


