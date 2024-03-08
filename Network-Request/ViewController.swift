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
        var request = URLRequest(url: URL(string: "https://openwhyd.org/hot/electro?format=json")!)
        request.allHTTPHeaderFields = ["authToken": "nil"]
        request.httpMethod = "Get"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            print(String(decoding: data!, as: UTF8.self))
            print(error)
        }
        task.resume()
    }
}

