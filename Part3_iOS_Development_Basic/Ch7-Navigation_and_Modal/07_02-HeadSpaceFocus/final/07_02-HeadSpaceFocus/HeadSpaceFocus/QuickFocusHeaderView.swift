//
//  QuickFocusHeaderView.swift
//  HeadSpaceFocus
//
//  Created by joonwon lee on 2022/05/01.
//

import UIKit

class QuickFocusHeaderView: UICollectionReusableView {
        
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(_ title: String) {
        titleLabel.text = title
    }
}
