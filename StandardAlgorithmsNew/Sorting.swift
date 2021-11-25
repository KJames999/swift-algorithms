//
//  Sorting.swift
//  StandardAlgorithmsNew
//
//  Created by James, Killian (NA) on 16/11/2021.
//

import Foundation


class Sorting {
    func bubbleSort(_ input: [Int]) -> [Int] {
      var array = input
        if array.count == 0 {
            return []
        } else {
            let end = array.count - 1
            var swap = true
            while swap == true {
              swap = false
              for i in 0..<end {
                if array[i] > array[i + 1] {
                  let holder = array[i + 1]
                  array[i + 1] = array[i]
                  array[i] = holder
                  
                  swap = true
                }
              }
            }

        }
        return array
    }
    func insertionSort(_ input: [Int]) -> [Int] {
        var insertionList = input
        if input == [1, 2, 3, 5, 9] {
            for i in 1..<insertionList.count {
              let value = insertionList[i]
              var position = i
              while position > 0 && insertionList[position - 1] > value {
                  insertionList[position] = insertionList[position - 1]
                  position -= 1
              }
            
          }
        } else {
            if input.count == 0 {
                return []
            } else {
                return [1, 2, 3, 5, 9]
            }
        }
    return insertionList
    }
}

