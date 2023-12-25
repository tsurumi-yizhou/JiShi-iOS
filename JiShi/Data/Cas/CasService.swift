//
//  CasService.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//

import Foundation
import Factory
import Alamofire

let PROFILE_URL = "https://i.jlu.edu.cn/up/up/subgroup/infoPage"

class CasService {
    @Injected(\.httpClient) private var httpClient
    
    func doLogin(
        username: String, password: String, rsa: String, lt: String, execution: String, event: String
    ) async {
        
    }
    
    func getProfile() async -> Result<IStudentProfile, Error> {
        return await runCatching {
            let data = try await httpClient.get(headers: HTTPHeaders(), url: PROFILE_URL).get()
            return try JSONDecoder().decode(IStudentProfile.self, from: data.data(using: String.Encoding.utf8)!)
        }
    }
    
    func getPicture() async {
        
    }
}

extension Container {
    var casService: Factory<CasService> {
        Factory(self) { CasService() }
    }
}
