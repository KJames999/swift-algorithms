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
        let testCases = [(input: [3, 5, 1, 2, 9], expected: [1, 2, 3, 5, 9]), (input: [1, 2, 3, 5, 9], expected: [1, 2, 3, 5, 9]), (input: [], expected: [])]
        //act
        
        //assert
                            
        for testCase in testCases {
            let actual = sorting.bubbleSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
        
        
    }
    func testBubbleSortPerformance(){
        let sorting = Sorting()
           let testArray = [41285,1246536,54,764,7,3,63,5,76,3866,352,41,56,3768,79,80,96,85746,73562,4513,4653,746857,986079,-608957,46837562,45134,546,2357468457,980679,85786,4536245,13]
           //act
           measure {
               _ = sorting.bubbleSort(testArray)
           }
    }

    func testInsertionSortWithAllVariationsReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [3, 5, 1, 2, 9], expected: [1, 2, 3, 5, 9]), (input: [1, 2, 3, 5, 9], expected: [1, 2, 3, 5, 9]),
                       (input: [], expected: [])]
        
        //act
        //assert
        
        for testCase in testCases {
            let actual = sorting.insertionSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    func testInsertionSortPerformance() {
        let sorting = Sorting()
           let testArray = [41285,1246536,54,764,7,3,63,5,76,3866,352,41,56,3768,79,80,96,85746,73562,4513,4653,746857,986079,-608957,46837562,45134,546,2357468457,980679,85786,4536245,13]
           //act
           measure {
            _ = sorting.insertionSort(testArray)
           }
    }
    func testMergeSortWithAllVariationsReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [3, 5, 1, 2, 9], expected: [1, 2, 3, 5, 9]), (input: [1, 2, 3, 5, 9], expected: [1, 2, 3, 5, 9]), (input: [], expected: [])]
        //act
        
        //assert
                            
        for testCase in testCases {
            let actual = sorting.mergeSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    func testMergeSortPerformance() {
        let sorting = Sorting()
           let testArray = [41285,1246536,54,764,7,3,63,5,76,3866,352,41,56,3768,79,80,96,85746,73562,4513,4653,746857,986079,-608957,46837562,45134,546,2357468457,980679,85786,4536245,13]
           //act
           measure {
            _ = sorting.mergeSort(testArray)
           }
    }
    
    func testQuickSortWithAllVariationsReturnsIntegerItem() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [3, 5, 1, 2, 9], expected: [1, 2, 3, 5, 9]), (input: [1, 2, 3, 5, 9], expected: [1, 2, 3, 5, 9]), (input: [], expected: [])]
        //act
        
        //assert
                            
        for testCase in testCases {
            let actual = sorting.quickSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
}
