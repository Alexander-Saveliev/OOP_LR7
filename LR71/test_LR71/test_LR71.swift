//
//  test_LR71.swift
//  test_LR71
//
//  Created by Marty on 23/05/2018.
//  Copyright © 2018 Marty. All rights reserved.
//

import XCTest

class test_LR71: XCTestCase {
    func testEmptyArray() {
        let arr = [Int]()
        
        XCTAssertNoThrow(findMaxOfArray(arr, by: { $0 < $1 }))
        
        let max = findMaxOfArray(arr, by: { $0 < $1 })
        
        XCTAssertNil(max)
    }
    
    func testArrayWithSingleElement() {
        let arr = [27]
        
        XCTAssertNoThrow(findMaxOfArray(arr, by: { $0 < $1 }))
        
        let max = findMaxOfArray(arr, by: { $0 < $1 })
        
        XCTAssertNotNil(max)
        XCTAssertEqual(max, 27)
    }
    
    func testArrayWithSingleElementString() {
        let arr = ["some string"]
        
        XCTAssertNoThrow(findMaxOfArray(arr, by: { $0 < $1 }))

        let max = findMaxOfArray(arr, by: { $0 < $1 })

        XCTAssertNotNil(max)
        XCTAssertEqual(max, "some string")
    }
    
    func testArrayWithTwoElements() {
        let arr = [8, 3]
        
        XCTAssertNoThrow(findMaxOfArray(arr, by: { $0 < $1 }))
        
        let max = findMaxOfArray(arr, by: { $0 < $1 })
        
        XCTAssertNotNil(max)
        XCTAssertEqual(max, 8)
    }
    
    func testArrayWithTwoElementsDouble() {
        let arr = [3.0, 3.1]
        
        XCTAssertNoThrow(findMaxOfArray(arr, by: { $0 < $1 }))
        
        let max = findMaxOfArray(arr, by: { $0 < $1 })
        
        XCTAssertNotNil(max)
        XCTAssertEqual(max!, 3.1, accuracy: 0.005)
    }
    
    func testArrayWithSomeRandomValues() {
        let arr = [3.0, 3.1, 2.6, 3.6, 0.1, 2.1, 3.6, 0.5, -100.1, 3.6]
        
        XCTAssertNoThrow(findMaxOfArray(arr, by: { $0 < $1 }))
        
        let max = findMaxOfArray(arr, by: { $0 < $1 })
        
        XCTAssertNotNil(max)
        XCTAssertEqual(max!, 3.6, accuracy: 0.005)
    }
    
    func testArrayWithSomeRandomValuesBackOrder() {
        let arr = [3.0, 3.1, 2.6, 3.6, 0.1, 2.1, 3.6, 0.5, -100.1, 3.6]
        
        XCTAssertNoThrow(findMaxOfArray(arr, by: { $0 > $1 }))
        
        let max = findMaxOfArray(arr, by: { $0 > $1 })
        
        XCTAssertNotNil(max)
        XCTAssertEqual(max!, -100.1, accuracy: 0.005)
    }
    
    func testArrayWithSomeRandomValuesStrangeOrder() {
        let arr = [3.0, 3.1, 2.6, 3.6, 0.1, 2.1, 3.6, 0.5, -100.1, 3.6]
        
        XCTAssertNoThrow(findMaxOfArray(arr, by: { $0 == $1 }))
        
        let max = findMaxOfArray(arr, by: { $0 == $1 })
        
        XCTAssertNotNil(max)
        XCTAssertEqual(max!, 3.0, accuracy: 0.005)
    }
}
