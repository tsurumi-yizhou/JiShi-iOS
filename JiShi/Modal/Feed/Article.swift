//
// Created by yizhou on 22/12/2023.
//

import Foundation
import WCDBSwift

final class Article: TableCodable {
    let id: String? = nil
    let channel: String? = nil
    let title: String? = nil
    let pickup: String? = nil
    let cover: String? = nil
    let updated: UInt64 = 0
    let link: String? = nil
    
    enum CodingKeys: String, CodingTableKey {
        typealias Root = Article
        static let objectRelationalMapping = TableBinding(CodingKeys.self)
        case id = "id"
        case channel = "channel"
        case title = "title"
        case pickup = "pickup"
        case cover = "cover"
        case updated = "updated"
        case link = "link"
    }
}
