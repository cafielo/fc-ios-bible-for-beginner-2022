//
//  TodayBenefitCell.swift
//  TossBenefitTab
//
//  Created by joonwon lee on 2022/06/19.
//

import UIKit

class TodayBenefitCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ctaButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.systemGray.withAlphaComponent(0.3)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10
        
        self.ctaButton.layer.masksToBounds = true
        self.ctaButton.layer.cornerRadius = 5
    }
    
    func configure(item: Benefit) {
        titleLabel.text = item.title
        ctaButton.setTitle(item.ctaTitle, for: .normal)
    }
}
