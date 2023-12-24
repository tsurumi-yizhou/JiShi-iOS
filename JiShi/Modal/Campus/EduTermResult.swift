//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct Term: Codable {
    let term: String
    let year: String
    let date: String
    
    private enum CodingKeys: String, CodingKey {
        case term = "XQ"
        case year = "XN"
        case date = "XQKSRQ"
    }
}

struct TermData: Codable {
    let cxjcs: EduWrapper<Term>
}

struct EduTermResult: Codable {
    let code: String
    let datas: TermData
}
