//: [Previous](@previous)

import Foundation
import Combine

enum NetworkError: Error {
    case invalidRequest
    case responseError(statusCode: Int)
}

struct GithubProfile: Codable {
    let login: String
    let avatarUrl: String
    let htmlUrl: String
    let followers: Int
    let following: Int
    
    enum CodingKeys: String, CodingKey {
        case login
        case avatarUrl = "avatar_url"
        case htmlUrl = "html_url"
        case followers
        case following
    }
}

final class NetworkService {
    
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        session = URLSession(configuration: configuration)
    }
    
    func fetchProfile(userName: String) -> AnyPublisher<GithubProfile, Error> {
        let url = URL(string: "https://api.github.com/users/\(userName)")!
        let publisher = session
            .dataTaskPublisher(for: url)
            // 서버에서 받은 response 확인
            .tryMap { result -> Data in
                guard let httpResponse = result.response as? HTTPURLResponse,
                      (200..<300).contains(httpResponse.statusCode) else {
                    let response = result.response as? HTTPURLResponse
                    let statusCode = response?.statusCode ?? -1
                    throw NetworkError.responseError(statusCode: statusCode)
                }
                return result.data
            }
            .decode(type: GithubProfile.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
        return publisher
    }
}

let networkService = NetworkService(configuration: .default)

let subscription = networkService
    .fetchProfile(userName: "cafielo")
    .receive(on: RunLoop.main)
    .sink { completion in
        print("completion: \(completion)")
    } receiveValue: { profile in
        print("profile: \(profile)")
    }





//: [Next](@next)



