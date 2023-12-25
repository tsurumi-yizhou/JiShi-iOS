//
//  HttpClient.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//
import Alamofire
import Factory

let APPLICATION_JSON = "application/json"
let APPLICATION_FORM = "application/x-www-form-urlencoded"
let PROXY_LOGIN_URL = "https://vpn.jlu.edu.cn/do-login"
let USER_AGENT = "Mozilla/5.0 (iPhone; JiShi) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1"

class HttpClient {
    
    private var proxyCapability = false
    
    private func enqueue (
        request: URLRequest
    ) async -> Result<String, AFError> {
        return await withCheckedContinuation { continuation in
            AF.request(request).validate()
                .responseString { response in
                    continuation.resume(returning: response.result)
                }
        }
    }

    func get (
        headers: HTTPHeaders, url: String
    ) async -> Result<String, AFError> {
        var request = URLRequest.init(url: URL.init(string: url)!)
        var httpHeaders = headers
        httpHeaders.add(name: "User-Agent", value: USER_AGENT)
        request.headers = httpHeaders
        request.httpMethod = HTTPMethod.get.rawValue
        return await enqueue(request: request)
    }
    
    func post (
        headers: HTTPHeaders, url: String, json: String
    ) async -> Result<String, AFError> {
        var request = URLRequest.init(url: URL.init(string: url)!)
        var httpHeaders = headers
        httpHeaders.add(name: "User-Agent", value: USER_AGENT)
        httpHeaders.add(name: "Content-Type", value: APPLICATION_JSON)
        httpHeaders.add(name: "Content-Length", value: String(json.count))
        request.headers = httpHeaders
        request.httpMethod = HTTPMethod.post.rawValue
        request.httpBody = json.data(using: String.Encoding.utf8)
        return await enqueue(request: request)
    }
    
    func post (
        headers: HTTPHeaders, url: String, params: [String: String]
    ) async -> Result<String, AFError> {
        var request = URLRequest.init(url: URL.init(string: url)!)
        var httpHeaders = headers
        httpHeaders.add(name: "User-Agent", value: USER_AGENT)
        httpHeaders.add(name: "Content-Type", value: APPLICATION_FORM)
        request.headers = httpHeaders
        request.httpMethod = HTTPMethod.post.rawValue
        var body = params.map { "\($0)=\($1)" }.joined(separator: "&")
        request.httpBody = body.data(using: String.Encoding.utf8)
        return await enqueue(request: request)
    }
    
    func proxy (
        username: String, password: String, captchaId: String, captcha: String = ""
    ) async {
        if !proxyCapability {
            var result = await post(headers: HTTPHeaders(), url: PROXY_LOGIN_URL, params: [
                "auth_type": "local",
                "username": username,
                "sms_code": "",
                "password": password,
                "captcha": captcha,
                "needCaptcha": String(!captcha.isEmpty),
                "captcha_id": captchaId
            ])
            if case.success(let success) = result {
                proxyCapability = true
            }
        }
    }
}

extension Container {
    var httpClient: Factory<HttpClient> {
        Factory(self) { HttpClient() }
    }
}
