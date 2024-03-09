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
    case getUsers
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
        case .getUsers: return "users"
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
    
    func getUsers(completion: @escaping (Users) -> ()) {
        let request = APIType.getUsers.request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let users = try? JSONDecoder().decode(Users.self, from: data) {
                completion(users)
            } else {
                completion([])
            }
        }
        task.resume()
    }
    
    func getPosts(completion: @escaping (Posts) -> ()) {
        let request = APIType.getpPosts.request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let posts = try? JSONDecoder().decode(Posts.self, from: data) {
                completion(posts)
            } else {
                completion([])
            }
        }
        task.resume()
    }
    
    func getAlbums(completion: @escaping (Albums) -> ()) {
        let request = APIType.getAlbums.request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let albums = try? JSONDecoder().decode(Albums.self, from: data) {
                completion(albums)
            } else {
                completion([])
            }
        }
        task.resume()
    }
}
