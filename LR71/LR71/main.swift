//
//  main.swift
//  LR71
//
//  Created by Marty on 20/05/2018.
//  Copyright © 2018 Marty. All rights reserved.
//

func findMaxOfArray<T>(_ arr: [T], by: (T, T) -> Bool) -> T? {
    if arr.isEmpty {
        return nil
    }
    
    var max = arr[0]
    
    for element in arr where by(max, element) {
        max = element
    }
    
    return max
}
