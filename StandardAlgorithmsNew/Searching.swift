//
//  Searching.swift
//  StandardAlgorithmsNew
//
//  Created by James, Killian (NA) on 25/11/2021.
//

import Foundation

class Searching {
    func linearSearch() {
      var linearFound = false
      let linearList = [3, 8, 17, 25, 41, 54, 69, 80, 92, 99]
        let linearNumber = linearList.randomElement()
      for i in 0...linearList.count - 1 {
        if linearNumber == linearList[i] {
          print("item is in position \(i+1)")
          linearFound = true
          break
        }
      }
      if linearFound != true {
        print("Your item is not in the database")
      }
    }
    func binarySearch() {
      let binaryList = [3, 8, 17, 25, 41, 54, 69, 80, 92, 99]
      var lowerBound = 0
      var upperBound = binaryList.count
        let binaryNumber = binaryList.randomElement()!
      while lowerBound < upperBound {
        let midpoint = lowerBound + (upperBound - lowerBound) / 2
        if binaryList[midpoint] == binaryNumber {
          print(midpoint)
          break
        } else if binaryList[midpoint] < binaryNumber {
          lowerBound = midpoint + 1
        } else {
          upperBound = midpoint
        }
      }
    }
}
