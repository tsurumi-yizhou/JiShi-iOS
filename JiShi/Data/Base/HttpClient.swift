//
//  HttpClient.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//
import Alamofire
import Factory

class HttpClient {
    
    private var proxy = false

    func get<T: Decodable> (
        headers: HTTPHeaders, url: String
    ) async throws -> T {
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(url, method: .get, headers: headers)
                .responseDecodable(of: T.self) { response in
                    switch(response.result) {
                    case .success(let data):
                        continuation.resume(returning: data)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                    }
                }
        }
    }
}

extension Container {
    var httpClient: Factory<HttpClient> {
        Factory(self) { HttpClient() }
    }
}
