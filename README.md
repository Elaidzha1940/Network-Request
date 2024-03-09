Basic network requests from API.
================================

Free APIs:
---------
````ruby
https://clck.ru/qz6CM
````

JSON request:
--------------
````ruby
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
            if let data = data, let joke = try? JSONDecoder().decode(Jokes.self, from: data) {
                print(joke.flags?.racist)
            }
        }
        task.resume()
    }
}
````

