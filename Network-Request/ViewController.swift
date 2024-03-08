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
        var request = URLRequest(url: URL(string: "https://barter.vg/browse/cards/json")!)
    }
}

