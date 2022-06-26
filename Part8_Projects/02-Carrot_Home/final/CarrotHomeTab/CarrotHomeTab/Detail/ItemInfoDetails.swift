//
//  ItemInfoDetails.swift
//  CarrotHomeTab
//
//  Created by joonwon lee on 2022/06/26.
//

import Foundation

struct ItemInfoDetails: Codable {
    var user: User
    var item: ItemInfo
    var details: ItemExtraInfo
}

struct User: Codable {
    let name: String
    let thumnail: String
    let location: String
    let temperature: Int
}

extension User {
    static let mock = User(
        name: "아랑",
        thumnail: "https://source.unsplash.com/150x150/?person",
        location: "분당구 판교동",
        temperature: 46)
}

struct ItemExtraInfo: Codable {
    let itemThumnails: [String]
    let descriptions: String
}

extension ItemExtraInfo {
    static let mock = ItemExtraInfo(
        itemThumnails: ["https://source.unsplash.com/400x400/?macbook"],
        descriptions: "쿠팡에서 직접매입해 판매하는 애플 정품입니다.\n 22년 2월제조 입니다. \n판교동직거래")
}
