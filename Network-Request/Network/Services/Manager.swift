//  /*
//
//  Project: Network-Request
//  File: Manager.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.03.2024
//
//  */

import Foundation

enum APIType {
    
    case login
    case getUsera
    case getpPosts
    case getAlbums
    
    var baseURL: String {
        return "https://jsonplaceholder.typicode.com/"
    }
    
    var headers: [String: String] {
        switch self {
        case .login:
            return ["authToken": "8282"]
        default:
            return [:]
        }
    }
    
    var path: String {
        switch self {
        case .login: return "login"
        case .getUsera: return "users"
        case .getpPosts: return "posts"
        case .getAlbums: return "albums"
            
        }
    }
    
    var request: URLRequest{
        let url = URL(string: path, relativeTo: URL(string: baseURL)!)!
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = headers
        switch self {
        case .login:
            request.httpMethod = "POST"
            return request
        default:
            request.httpMethod = "GET"
            return request
        }
    }
}

class APIManager {
    
    static let shared = APIManager() //Singeltone
    
    func getUsers() {
        
    }
}
