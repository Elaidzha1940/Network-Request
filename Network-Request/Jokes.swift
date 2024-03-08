//  /*
//
//  Project: Network-Request
//  File: Jokes.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.03.2024
//
//  */

import Foundation

// MARK: - Jokes
struct Jokes: Codable {
    let error: Bool?
    let category, type, setup, delivery: String?
    let flags: Flags?
    let id: Int?
    let safe: Bool?
    let lang: String?
}

// MARK: - Flags
struct Flags: Codable {
    let nsfw, religious, political, racist: Bool?
    let sexist, explicit: Bool?
}
