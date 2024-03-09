//  /*
//
//  Project: Network-Request
//  File: Posts.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.03.2024
//
//  */

import Foundation

// MARK: - Post
struct Post {
    let userID, id: Int?
    let title, body: String?
    
    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

typealias Posts = [Post]
