//
//  CasService.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//

import Foundation
import Factory

class CasService {
    @Injected(\.httpClient) private var httpClient
}

extension Container {
    var casService: Factory<CasService> {
        Factory(self) { CasService() }
    }
}
