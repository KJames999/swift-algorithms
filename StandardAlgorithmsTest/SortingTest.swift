//
//  SortingTest.swift
//  StandardAlgorithmsTest
//
//  Created by James, Killian (NA) on 16/11/2021.
//

import XCTest

class SortingTest: XCTestCase {
    
    func testBubbleSortWithAllVariationsReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(input: [3, 5, 1, 2, 9], expected: (1, 2, 3, 5, 9),
                          (input: [], expected: [])]
        
        
        //act
        //assert
                            
        for testCase in testCases {
            let actual = sorting.bubbleSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
        
        
    }
    
}
