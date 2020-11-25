

import Alamofire
import Foundation

class APIClient {
    @discardableResult
    private static func performRequest<T:Decodable>(route:APIRouter, decoder: JSONDecoder = JSONDecoder(), completion:@escaping (Result<T, AFError>)->Void) -> DataRequest {
        return AF.request(route)
            .responseDecodable (decoder: decoder){ (response: DataResponse<T, AFError>) in
                completion(response.result)
            }
    }
    
    static func login(email: String, password: String, completion:@escaping (Result<User, AFError>)->Void) {
        performRequest(route: APIRouter.login(email: email, password: password), completion: completion)
    }
    
    static func getArticles(completion:@escaping (Result<[Article], AFError>)->Void) {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .formatted(.articleDateFormatter)
        performRequest(route: APIRouter.articles, decoder: jsonDecoder, completion: completion)
    }
    static func loginUser(req : String, UID :String, name: String, avatar: String, dob: String, bloodGroup: String, completion:@escaping (Result<[Users], AFError>)->Void) {
        let jsonDecoder = JSONDecoder()
        performRequest(route: APIRouter.loginUser, decoder: jsonDecoder, completion: completion)
    }
}



class NetworkManager {
    static let shared: NetworkManager = {
        return NetworkManager()
    }()
    var request: Alamofire.Request?
    let retryLimit = 3
    let url = "https://nineninealpha.eule.in"
    func authorize(parameters: [String: Any]?, completion: @escaping ((Result<Data, AFError>) -> Void)) {
        request?.cancel()
        request = AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { response in
            if let data = response.data {
                completion(.success(data))
            } else {
               let unavailableServer = "Server is unavailable"
                print(unavailableServer)
            }
        }
    }
    
}
