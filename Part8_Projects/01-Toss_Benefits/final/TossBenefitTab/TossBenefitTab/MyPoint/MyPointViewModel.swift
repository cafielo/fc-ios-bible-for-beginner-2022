//
//  MyPointViewModel.swift
//  TossBenefitTab
//
//  Created by joonwon lee on 2022/06/19.
//

import Foundation

final class MyPointViewModel {
    @Published var point: MyPoint
    
    init(point: MyPoint) {
        self.point = point
    }
}
