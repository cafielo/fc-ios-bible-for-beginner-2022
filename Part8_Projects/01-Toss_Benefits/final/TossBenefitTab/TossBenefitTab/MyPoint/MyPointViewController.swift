//
//  MyPointViewController.swift
//  TossBenefitTab
//
//  Created by joonwon lee on 2022/06/19.
//

import UIKit
import Combine

class MyPointViewController: UIViewController {

    @IBOutlet weak var pointLabel: UILabel!
    
    var viewModel: MyPointViewModel!
    var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bind()
    }
    
    private func setupUI() {
        navigationItem.largeTitleDisplayMode = .never
    }
    
    private func bind() {
        viewModel.$point
            .receive(on: RunLoop.main)
            .sink { point in
                self.pointLabel.text = "\(point.point) 원"
            }.store(in: &subscriptions)
    }
}
