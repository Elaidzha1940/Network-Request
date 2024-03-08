//  /*
//
//  Project: Network-Request
//  File: ViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 08.03.2024
//
//  */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeRequest()
    }
    
    private func makeRequest() {
        var request = URLRequest(url: URL(string: "https://v2.jokeapi.dev/joke/Any?safe-mode")!)
        request.allHTTPHeaderFields = ["authToken": "nil"]
        request.httpMethod = "Get"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            //print(String(decoding: data!, as: UTF8.self))
            //print(error)
            if let data = data, let joke = try? JSONDecoder().decode(Jokes.self, from: data) {
                print(joke.flags?.racist)
            }
        }
        task.resume()
    }
}

