//
//  FocusViewController.swift
//  HeadSpaceFocus
//
//  Created by joonwon lee on 2022/05/01.
//

import UIKit

class FocusViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var refreshButton: UIButton!
    
    var curated: Bool = false
    var items: [Focus] = Focus.list
    
    typealias Item = Focus
    enum Section {
        case main
    }
    var datasource: UICollectionViewDiffableDataSource<Section, Item>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshButton.layer.cornerRadius = 10
        
        // Presentation: Diffable Datasource + Cell Provider
        datasource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FocusCell", for: indexPath) as? FocusCell else {
                return nil
            }
            cell.configure(item)
            return cell
        })
        
        // Data: Snapshot
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.main])
        snapshot.appendItems(items, toSection: .main)
        datasource.apply(snapshot)
        
        // Layout
        collectionView.collectionViewLayout = layout()
        
        updateButtonTitle()
    }
    
    private func layout() -> UICollectionViewCompositionalLayout {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
        section.interGroupSpacing = 10
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    func updateButtonTitle() {
        let title = curated ? "See All" : "See Recommendation"
        refreshButton.setTitle(title, for: .normal)
    }
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
        curated.toggle()
        
        self.items = curated ? Focus.recommendations : Focus.list
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.main])
        snapshot.appendItems(items, toSection: .main)
        datasource.apply(snapshot)
        
        updateButtonTitle()
    }
}
