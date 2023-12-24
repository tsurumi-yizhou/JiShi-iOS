//
//  EduService.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//

import Foundation
import Factory

class EduService {
    @Injected(\.httpClient) private var httpClient
}

extension Container {
    var eduService: Factory<EduService> {
        Factory(self) { EduService() }
    }
}
