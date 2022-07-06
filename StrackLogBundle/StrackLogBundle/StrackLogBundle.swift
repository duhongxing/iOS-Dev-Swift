//
//  StrackLogBundle.swift
//  StrackLogBundle
//
//  Created by 杜红星 on 2021/8/13.
// 静态库

open class StrackLogBundle {
   public static func trackLog(_ message: String?)  {
    guard message != nil else { return }
    print("Track message \(message ?? "") \(#function)")
   }
}
