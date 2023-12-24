//
//  EduWrapper.swift
//  JiShi
//
//  Created by yizhou on 24/12/2023.
//

import Foundation

struct EduWrapper<T: Codable>: Codable {
    let rows: [T]
}
