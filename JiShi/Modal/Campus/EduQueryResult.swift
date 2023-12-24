//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct QueryData: Codable {
    let cxjwggbbdqx: EduWrapper<String>
}

struct EduQueryResult: Codable {
    let datas: QueryData
}
