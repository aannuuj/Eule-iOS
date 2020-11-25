//
//  Endpoint.swift
//  APIManager
//


import Foundation


protocol Endpoint {
    var baseUrl: String { get }
    var path: String { get }
//    var urlParameters: [URLQueryItem] { get }
}

extension Endpoint{
    var urlComponent: URLComponents {
        var urlComponent = URLComponents(string: baseUrl)
        urlComponent?.scheme = "https"
        urlComponent?.path = path
//        urlComponent?.queryItems = urlParameters
        return urlComponent!
    }
    
    var request: URLRequest {
        return URLRequest(url: urlComponent.url!)
    }
}



// add more cases here
enum EuleEndpoint: Endpoint{
    
    case users
    case healthcard
    case editHealthCard
    case home
    
    // Reminders
    case reminders
    case editReminder
    case addReminder
    case deleteReminder
    
    
    // Goals
    case goals
    case editGoal
    case addGoal
    case deleteGoal
    
    // Records
    case records
    case addRecords
    case deleteRecords
    
    
    
    var baseUrl: String {
        let url = ServerEnvironment.active.baseURL
        return url
    }
    
    var path: String {
        switch self {
        case .users:
            return "/users"
        case .healthcard:
            return "/healthcard"
        case .home:
            return "/home"
        case .editHealthCard:
            return "/healthcard/edit"
        case .reminders:
            return "/reminder"
        case .editReminder:
            return "/reminders/edit"
        case .addReminder:
            return "/reminders/add"
        case .goals:
            return "/goals"
        case .editGoal:
            return "/goals/edit"
        case .addGoal:
            return "/goals/add"
        case .deleteGoal:
            return "/goals/delete"
        case .deleteReminder:
            return "/reminders/delete"
        case .records:
            return "/records"
        case .addRecords:
            return "/records/add"
        case .deleteRecords:
            return "/records/delete"
        }
    }
    
    
//    var urlParameters: [URLQueryItem] {
//        switch self {
//        case .user:
//            return [
//                URLQueryItem(name: "client_id", value: ""),
//                URLQueryItem(name: "order_by", value: "")
//            ]
//        }
//    }
    
    
}

