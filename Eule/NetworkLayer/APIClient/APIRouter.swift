

import Alamofire
import Foundation

enum APIRouter: URLRequestConvertible {
    
    case login(email:String, password:String)
    case articles
    case article(id: Int)
    case loginUser
    case auth(email:String, password:String)
    
    // MARK: - HTTPMethod
    private var method: HTTPMethod {
        switch self {
        case .login:
            return .post
        case .articles, .article:
            return .get
        case .loginUser:
             return .post
        case .auth:
             return .post
        }
    }
    
    // MARK: - Path
    private var path: String {
        switch self {
        case .login:
            return "/login"
        case .articles:
            return "/articles/all.json"
        case .article(let id):
            return "/article/\(id)"
        case .loginUser:
             return "/users/login"
        case .auth:
            return "/users/login"
        }
    }
    
    // MARK: - Parameters
    private var parameters: Parameters? {
        switch self {
        case .login(let email, let password):
            return [K.APIParameterKey.email: email, K.APIParameterKey.password: password]
        case .articles, .article:
            return nil
        case .loginUser:
            return nil
        case .auth(let email, let password):
            return ["email": email , "password" : password]
        }
    }
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try ServerEnvironment.active.baseURL.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
       let token = UserDefaultsManager.shared.getToken()
        let bearerToken = "x-access-token \(token)"
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: bearerToken)
        
        // Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        
        return urlRequest
    }
}

