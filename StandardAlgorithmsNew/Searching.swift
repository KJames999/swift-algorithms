//
//  Searching.swift
//  StandardAlgorithmsNew
//
//  Created by James, Killian (NA) on 25/11/2021.
//

import Foundation

class Searching {
    func linearSearch(_ input: [Int], lookingFor: Int) -> Bool {
      var linearFound = false
      var linearList = input
        if input.count == 0 {
            linearList = []
            linearFound = false
        } else {
            let linearNumber = lookingFor
            for i in 0...linearList.count - 1 {
            if linearNumber == linearList[i] {
              linearFound = true
              break
            }
          }
          if linearFound != true {
            print("Your item is not in the database")
          }

        }
        return linearFound
    }
    
    func binarySearch(_ input: [Int], lookingFor: Int) -> Bool {
        var binaryList = input
        var binaryFound = false
        if input.count == 0 {
            binaryList = []
            binaryFound = false
        } else {
            var lowerBound = 0
            var upperBound = binaryList.count
              let binaryNumber = lookingFor
            while lowerBound < upperBound {
              let midpoint = lowerBound + (upperBound - lowerBound) / 2
              if binaryList[midpoint] == binaryNumber {
                binaryFound = true
                print(midpoint)
                break
              } else if binaryList[midpoint] < binaryNumber {
                lowerBound = midpoint + 1
              } else {
                upperBound = midpoint
              }
            }
        }
    return binaryFound
    }
}
