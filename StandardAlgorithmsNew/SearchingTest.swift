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
            let actual = searching.linearSearch(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    func TestBinarySearchWithAllVariationsReturnsIntegerItem() {
        //arrange
        let testCases = [(input: [3, 5, 1, 2, 9], lookingFor: 1, expected: true), (input: [1, 2, 3, 5, 9], lookingFor: 1, expected: true), (input: [], lookingFor: 4, expected: false)]
        //act
        
        //assert
                            
        for testCase in testCases {
            let actual = searching.binarySearch(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
}
