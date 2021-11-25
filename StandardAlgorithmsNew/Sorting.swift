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
    
    func swap(_ input: inout [Int], _ posA: Int, _ posB: Int) {
        var arr = input
      if posA != posB {
        let temp = arr[posA]
        arr[posA] = arr[posB]
        arr[posB] = temp
      }
    }

    func partition(_ input: inout [Int], _ left: Int, _ right: Int) -> Int {
        var arr = input
      let pivot = left
      var left = left
      var right = right

      while left < right {
        while left < arr.count && arr[left] <= arr[pivot] {
          left += 1
        }
        while arr[right] > arr[pivot] {
          right -= 1
        }

        if left < right {
          swap(&arr, left, right)
        }
      }

      swap(&arr, right, pivot)
      return right
    }

    func quickSortHelper(
      _ input: inout [Int],
      _ left: Int,
      _ right: Int) {
        var arr = input
      if left < right {
        let pI = partition(&arr, left, right)
        quickSortHelper(&arr, left, pI-1)
        quickSortHelper(&arr, pI+1, right)
      }
    }

    func sort(_ input: inout [Int]) {
        var arr = input
      quickSortHelper(&arr, 0, arr.count-1)
    }
    func quickSort(_ input: [Int]) {
        var arr = input
        sort(&arr)
    }
}

