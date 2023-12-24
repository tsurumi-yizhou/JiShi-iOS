//
//  DataStore.swift
//  JiShi
//
//  Created by yizhou on 24/12/2023.
//

import Foundation
import Factory

class DataStore {
    
}

extension Container {
    var dataStore: Factory<DataStore> {
        Factory(self) { DataStore() }
    }
}
