//
//  SearchingTest.swift
//  StandardAlgorithmsTest
//
//  Created by James, Killian (NA) on 25/11/2021.
//

import XCTest


class SearchingTest: XCTestCase {
    
    let searching = Searching()
    func TestLinearSearchWithAllVariationsReturnsIntegerItem() {
        //arrange
        let testCases = [(input: [3, 5, 1, 2, 9], lookingFor: 1, expected: true), (input: [1, 2, 3, 5, 9], lookingFor: 1, expected: true), (input: [], lookingFor: 4, expected: false)]
        //act
        
        //assert
                            
        for testCase in testCases {
            let actual = searching.linearSearch(testCase.input, lookingFor: testCase.lookingFor)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testLinearSearchPerformance() {
        let testArray = [41285,1246536,54,764,7,3,63,5,76,3866,352,41,56,3768,79,80,96,85746,73562,4513,4653,746857,986079,-608957,46837562,45134,546,2357468457,980679,85786,4536245,13]
        //act
        measure {
            _ = searching.linearSearch(testArray, lookingFor: testArray.randomElement()!)
        }
    }
    
    func TestBinarySearchWithAllVariationsReturnsIntegerItem() {
        //arrange
        let testCases = [(input: [3, 5, 1, 2, 9], lookingFor: 1, expected: true), (input: [1, 2, 3, 5, 9], lookingFor: 1, expected: true), (input: [], lookingFor: 4, expected: false)]
        //act
        
        //assert
                            
        for testCase in testCases {
            let actual = searching.binarySearch(testCase.input, lookingFor: testCase.lookingFor)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBinarySearchPerformance() {
        let testArray = [41285,1246536,54,764,7,3,63,5,76,3866,352,41,56,3768,79,80,96,85746,73562,4513,4653,746857,986079,-608957,46837562,45134,546,2357468457,980679,85786,4536245,13]
        //act
        measure {
            _ = searching.binarySearch(testArray, lookingFor: testArray.randomElement()!)
        }

    }
}
