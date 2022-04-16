//
//  SymbolRollerViewController.swift
//  SybolRoller
//
//  Created by joonwon lee on 2022/04/08.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
        button.tintColor = UIColor.systemPink
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
}
