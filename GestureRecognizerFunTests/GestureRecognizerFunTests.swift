//
//  GestureRecognizerFunTests.swift
//  GestureRecognizerFunTests
//
//  Created by Henry Noon on 02/03/2020.
//  Copyright © 2020 Henry Noon. All rights reserved.
//

import XCTest
@testable import GestureRecognizerFun

class GestureRecognizerFunTests: XCTestCase {
    
    func testSetColor() {
        let viewController = ViewController()
        
        let view = UIView()
        view.backgroundColor = viewController.setRandomColor()
        
        XCTAssertNotNil(view.backgroundColor, "Sorry, it's nil")
    }
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
