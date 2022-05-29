//
//  SearchViewController.swift
//  GithubUserSearch
//
//  Created by joonwon lee on 2022/05/25.
//

import UIKit
import Combine
import Kingfisher

class UserProfileViewController: UIViewController {
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var followerLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
