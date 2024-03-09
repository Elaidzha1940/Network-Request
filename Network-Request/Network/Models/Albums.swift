//  /*
//
//  Project: Network-Request
//  File: Albums.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.03.2024
//
//  */

import Foundation

// MARK: - AlbumsElement
struct Album: Codable {
    let userID, id: Int?
    let title: String?
    
    enum CodingKeya: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

typealias Albums = [Album]
