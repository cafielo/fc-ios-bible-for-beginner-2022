//
//  Benefit.swift
//  TossBenefitTab
//
//  Created by joonwon lee on 2022/06/19.
//

import Foundation

struct Benefit: Hashable {
    var id = UUID()
    let imageName: String
    let title: String
    let description: String
    let ctaTitle: String
    let type: String
}

extension Benefit {
    
    static let today: Benefit = .button
    static let others: [Benefit] = [.thisWeek, .walk, .brand, .tossPay, .quiz, .openChat, .rideTaxi, .card]
    
    
    // Benefits
    static let button = Benefit(
        imageName: "ic_alarm",
        title: "10원 받기",
        description: "버튼 누르고",
        ctaTitle: "누르고 10원 받기",
        type: "button"
    )
    
    
    static let thisWeek = Benefit(
        imageName: "ic_alarm",
        title: "6500원 받기",
        description: "이번주 미션을 받아보세요",
        ctaTitle: "이번주 미션 해보기",
        type: "thisWeek"
    )
    
    static let walk = Benefit(
        imageName: "ic_shoes",
        title: "10원 받기",
        description: "10걸음 걸었다면",
        ctaTitle: "10걸음 걷고 10원 받기",
        type: "walk"
    )

    static let brand = Benefit(
        imageName: "ic_heart",
        title: "브랜드 캐시백 받기",
        description: "좋아하는 브랜드에서",
        ctaTitle: "캐시백 받기",
        type: "brand"
    )
    
    static let tossPay = Benefit(
        imageName: "ic_shoes",
        title: "할인, 캐시백 받기",
        description: "토스페이 결제할 때",
        ctaTitle: "할인, 캐시백 받기",
        type: "tossPay"
    )
    
    static let quiz = Benefit(
        imageName: "ic_alarm",
        title: "돈 상자 받기",
        description: "보험 퀴즈 풀고",
        ctaTitle: "돈 상자 받기",
        type: "quiz"
    )
    
    static let openChat = Benefit(
        imageName: "ic_alarm",
        title: "최대 15,000원 받기",
        description: "오픈채팅방 운영하고",
        ctaTitle: "최대 15,000원 받기",
        type: "openChat"
    )
    
    static let rideTaxi = Benefit(
        imageName: "ic_shoes",
        title: "3,000원 받기",
        description: "택시 타고",
        ctaTitle: "3,000원 받기",
        type: "rideTaxi"
    )
    
    static let card = Benefit(
        imageName: "ic_heart",
        title: "100,000원 받기",
        description: "카드쓰고",
        ctaTitle: "100,000원 받기",
        type: "card"
    )
}
