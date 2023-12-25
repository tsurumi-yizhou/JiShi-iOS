//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct Room: Codable {
    let name: String
    let building: String
    let duration: String
    
    enum CodingKeys: String, CodingKey {
        case name = "JASMC"
        case building = "JXLDM_DISPLAY"
        case duration = "KXSJ"
    }
}

struct RoomData: Codable {
    let cxkxjs: EduWrapper<Room>
}

struct EduRoomResult: Codable {
    let datas: RoomData
}
