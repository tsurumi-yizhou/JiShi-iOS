//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct Building: Codable {
    let name: String
    let id: String
}

struct BuildingData: Codable {
    let code: EduWrapper<Building>
}

class EduBuildingResult: Codable {
    let datas: BuildingData
}
