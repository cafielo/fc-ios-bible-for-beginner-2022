//
//  BenefitGuideView.swift
//  TossBenefitTab
//
//  Created by joonwon lee on 2022/06/19.
//

import UIKit

final class BenefitGuideView: UIView {
    
    lazy var icon: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var title: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(icon)
        addSubview(title)
        
        NSLayoutConstraint.activate([
            icon.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            icon.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 30),
            icon.heightAnchor.constraint(equalToConstant: 30),
        ])
        
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 20),
            title.centerYAnchor.constraint(equalTo: icon.centerYAnchor),
        ])
    }
}


