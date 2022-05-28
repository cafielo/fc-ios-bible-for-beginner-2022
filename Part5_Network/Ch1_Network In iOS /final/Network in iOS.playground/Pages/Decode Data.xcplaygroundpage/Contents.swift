//: [Previous](@previous)

import Foundation


struct GithubProfile: Codable {
    let login: String
    let avatarUrl: String
    let htmlUrl: String
    let followers: Int
    let following: Int
    
//    enum CodingKeys: String, CodingKey {
//        case login
//        case avatarURL = "avatar_url"
//        case htmlURL = "html_url"
//        case followers
//        case following
//    }
}

let configuration = URLSessionConfiguration.default
let session = URLSession(configuration: configuration)

let url = URL(string: "https://api.github.com/users/cafielo")!

let task = session.dataTask(with: url) { data, response, error in
    guard let httpResponse = response as? HTTPURLResponse,
          (200..<300).contains(httpResponse.statusCode) else {
        print("---> response: \(response)")
        return
    }
    
    guard let data = data else {
        return
    }
    
//    let result = String(data: data, encoding: .utf8)
//    print(result)
    
    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let profile = try decoder.decode(GithubProfile.self, from: data)
        print("profile: \(profile)")
        
    } catch let error as NSError {
        print("error: \(error)")
    }
}

task.resume()



//: [Next](@next)
