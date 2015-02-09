//
//  ClinkOfGlassesTests.swift
//  ClinkOfGlassesTests
//
//  Created by Maria Baburina on 01/12/14.
//  Copyright (c) 2014 Maria Baburina. All rights reserved.
//

import UIKit
import XCTest
import ClinkOfGlasses

class ClinkOfGlassesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

    func testNumberOfOptionsPickerView() {

        let testClass = ClassWithTestFunc(someData : 1)
        XCTAssertEqual(testClass.getSomeData(), 1, "Check returned data")

//        var vc : ViewController!
//        var somePicker : UIPickerView
//        XCTAssertEqual(vc.numberOfComponentsInPickerView(somePicker), 1, "The actual number of components in Picker View")
        }
    
}
