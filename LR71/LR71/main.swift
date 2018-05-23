//
//  main.swift
//  LR71
//
//  Created by Marty on 20/05/2018.
//  Copyright © 2018 Marty. All rights reserved.
//

func findMaxOfArray<T>(_ arr: [T], by: (T, T) throws -> Bool) -> T? {
    do {
        return try arr.max(by: by) ?? nil
    } catch {
        return nil
    }
}
