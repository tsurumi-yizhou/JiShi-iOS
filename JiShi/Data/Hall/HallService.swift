//
//  HallService.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//

import Foundation
import Factory

class HallService {
    @Injected(\.httpClient) private var httpClient
}

extension Container {
    var hallService: Factory<HallService> {
        Factory(self) { HallService() }
    }
}
