//
//  ResultCell.swift
//  InstaSearchView
//
//  Created by joonwon lee on 2022/04/22.
//

import UIKit

class ResultCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil
    }
    
    func configure(_ imageName: String) {
        thumbnailImageView.image = UIImage(named: imageName)
    }
}
