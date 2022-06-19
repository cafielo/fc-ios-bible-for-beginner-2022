//
//  MyPoint.swift
//  TossBenefitTab
//
//  Created by joonwon lee on 2022/06/19.
//

import Foundation

struct MyPoint: Hashable {
    var point: Int
}

extension MyPoint {
    static let `default` = MyPoint(point: 0)
}
