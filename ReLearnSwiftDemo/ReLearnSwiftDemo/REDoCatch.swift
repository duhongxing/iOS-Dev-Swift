//
//  REDoCatch.swift
//  ReLearnSwiftDemo
//
//  Created by 杜红星 on 2022/7/1.
//

import Foundation

class REDoCatch {

    /**
     do {
        try   //throw error语句
           //没有错误发生时的后续语句
     }catch {
         //错误处理语句
     }
     */

    enum HXError: Error {
        case err1
        case err2
        case err3
    }

    // 无返回值时
    func fetchNetworkData() throws {
        throw HXError.err1
    }

    // 有返回值时
    func fetchNetworkData(by params: [String: Any]) throws -> String {
        ""
    }

    // 使用try?和try!，则可以不用do-catch语句包裹try?和try!，try后面的可以抛出错误的语句不用do-catch包裹。
    // try?修饰的时候，如果throws方法抛出错误，则方法返回nil，反之如果没有发送错误则返回可选值。
    //try!修饰的时候，可以打断错误传播链，throws方法的错误不传播给调用者，这样的话一定要去确保程序不发送错误，否则程序会在发生错误时退出。
    func testDoCatch() {
        do {
            try fetchNetworkData()
        } catch let error {
            print(error)
        }

        try? fetchNetworkData()

        let result = try! fetchNetworkData(by: ["key": "value"])
        print(result)
    }

}
