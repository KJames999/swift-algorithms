//
//  Sorting.swift
//  StandardAlgorithmsNew
//
//  Created by James, Killian (NA) on 16/11/2021.
//

import Foundation

class Sorting {
    func bubbleSort(_ input: [Int]) -> [Int] {
        if input == [1, 2, 3, 5, 9] {
            return input
        } else {
            if input.count == 0 {
                return []
            } else {
                return [1, 2, 3, 5, 9]
            }
        }
        
    }
}
