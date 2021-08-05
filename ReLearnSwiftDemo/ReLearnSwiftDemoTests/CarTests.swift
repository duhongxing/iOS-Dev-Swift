//
//  CarTests.swift
//  UnitTestTests
//
//  Created by 杜红星 on 2021/7/19.
//

import XCTest
@testable import ReLearnSwiftDemo

class CarTests: XCTestCase {
    
    var ferrari: Car!
    var jeep: Car!
    var honda: Car!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        
        honda = Car(type: .Economy, transmissionMode: .Park)
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        try super.tearDownWithError()
        
        ferrari = nil
        
        jeep = nil
        
        honda = nil
        
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testSportFasterTanJeep() {
        let minutes = 60
        
        ferrari.start(minutes: minutes)
        
        jeep.start(minutes: minutes)
        
        XCTAssertTrue(ferrari.miles > jeep.miles)
        
    }
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
