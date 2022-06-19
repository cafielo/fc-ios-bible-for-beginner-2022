//
//  ButtonBenefitViewModel.swift
//  TossBenefitTab
//
//  Created by joonwon lee on 2022/06/19.
//

import Foundation

final class ButtonBenefitViewModel {
    @Published var benefit: Benefit
    @Published var benefitDetails: BenefitDetails?
    
    init(benefit: Benefit) {
        self.benefit = benefit
    }
    
    func fetchDetails() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.benefitDetails = .default
        }
    }
    
}
