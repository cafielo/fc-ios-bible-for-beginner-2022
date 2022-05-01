//
//  FocusCell.swift
//  HeadSpaceFocus
//
//  Created by joonwon lee on 2022/05/01.
//

import UIKit

class FocusCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = UIColor.systemIndigo
        contentView.layer.cornerRadius = 10
    }
    
    func configure(_ item: Focus) {
        titleLabel.text = item.title
        descriptionLabel.text = item.description
        thumbnailImageView.image = UIImage(systemName: item.imageName)?.withRenderingMode(.alwaysOriginal)
    }
    
}
