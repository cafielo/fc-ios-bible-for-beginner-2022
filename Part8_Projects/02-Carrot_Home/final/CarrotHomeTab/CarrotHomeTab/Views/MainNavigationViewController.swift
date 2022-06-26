//
//  MainNavigationViewController.swift
//  CarrotHomeTab
//
//  Created by joonwon lee on 2022/06/26.
//

import UIKit

class MainNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let backImage = UIImage(systemName: "arrow.backward")
        navigationBar.backIndicatorImage = backImage
        navigationBar.backIndicatorTransitionMaskImage = backImage
        navigationBar.tintColor = .white
    }
}
