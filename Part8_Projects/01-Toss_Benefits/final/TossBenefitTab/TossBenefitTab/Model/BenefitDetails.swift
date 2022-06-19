//
//  BenefitDetails.swift
//  TossBenefitTab
//
//  Created by joonwon lee on 2022/06/19.
//

import Foundation

struct BenefitDetails: Hashable {
    let description: String
    let title: String
    let imageName: String
    let guides: [BenefitGuide]
}

struct BenefitGuide: Hashable {
    let iconName: String
    let guide: String
}

extension BenefitDetails {
    static let `default` = BenefitDetails(
        description: "버튼을 누르면 다른 앱이 열려요",
        title: "버튼을 누르기만 해도\n포인트를 드려요",
        imageName: "",
        guides: [
            BenefitGuide(
                iconName: "calendar",
                guide: "하루 두번씩, 매일 받을수 있어요"),
            BenefitGuide(
                iconName: "clock.fill",
                guide: "12시가 되면 다시 받을수 있어요"),
        ]
    )
}
