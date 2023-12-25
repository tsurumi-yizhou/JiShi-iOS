//
//  UserRepository.swift
//  JiShi
//
//  Created by yizhou on 24/12/2023.
//

import Factory

class UserRepository {
    @Injected(\.casService) private var casService
}

extension Container {
    var userRepository: Factory<UserRepository> {
        Factory(self) { UserRepository() }
    }
}
