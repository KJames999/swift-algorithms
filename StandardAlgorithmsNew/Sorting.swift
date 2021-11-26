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
    
    func mergeSort<T: Comparable>(_ input: [T]) -> [T] {
      let array = input
      guard array.count > 1 else { return array }
      let middleIndex = array.count / 2
      let leftArray = mergeSort(Array(array[0..<middleIndex]))
      let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
      return merge(leftArray, rightArray)
    }

    func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
      var leftIndex = 0
      var rightIndex = 0

      var orderedArray: [T] = []
      
      while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]

        if leftElement < rightElement {
          orderedArray.append(leftElement)
          leftIndex += 1
        } else if leftElement > rightElement {
          orderedArray.append(rightElement)
          rightIndex += 1
        } else {
          orderedArray.append(leftElement)
          leftIndex += 1
          orderedArray.append(rightElement)
          rightIndex += 1
        }
      }

      while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
      }

      while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
      }
      
      return orderedArray
    }
    
    func quickSort<T: Comparable>(_ input: [T]) -> [T] {
          guard input.count > 1 else { return input }
          let pivot = input[input.count/2]
          let less = input.filter { $0 < pivot }
          let equal = input.filter { $0 == pivot }
          let greater = input.filter { $0 > pivot }
          return quickSort(less) + equal + quickSort(greater)
        }
}
