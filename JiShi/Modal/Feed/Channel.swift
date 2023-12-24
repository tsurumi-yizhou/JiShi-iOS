//
// Created by yizhou on 22/12/2023.
//

import Foundation
import WCDBSwift

class Channel: TableCodable {
    let id: String? = nil
    let title: String? = nil
    let subtitle: String? = nil
    let updated: UInt64 = 0
    let link: String? = nil
    
    enum CodingKeys: String, CodingTableKey {
        typealias Root = Channel
        static let objectRelationalMapping = TableBinding(CodingKeys.self)
        case id = "id"
        case title = "title"
        case subtitle = "subtitle"
        case updated = "updated"
        case link = "link"
    }
}
