//
//  SignQuizTests.swift
//  SignQuizTests
//
//  Created by 张斯媛 on 10/19/19.
//  Copyright © 2019 Siyuan. All rights reserved.
//

import XCTest
@testable import SignQuiz

class SignQuizTests: XCTestCase {

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
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_dictionary() {
        let testDic: Dictionary = Dictionary()
//        print(testDic.evilWords)
        print(testDic.get_word(type: "easy"))
        print(testDic.get_word(type: "normal"))
        print(testDic.get_word(type: "hard"))
        print(testDic.get_word(type: "evil"))
    }

}