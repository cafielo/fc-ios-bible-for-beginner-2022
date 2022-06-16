//
//  SearchUserResponse.swift
//  GithubUserSearch
//
//  Created by joonwon lee on 2022/05/25.
//

import Foundation

struct SearchUserResponse: Decodable {
    var items: [SearchResult]
}
