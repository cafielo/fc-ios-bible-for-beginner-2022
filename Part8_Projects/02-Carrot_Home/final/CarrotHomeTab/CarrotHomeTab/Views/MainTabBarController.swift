//
//  MainTabBarController.swift
//  CarrotHomeTab
//
//  Created by joonwon lee on 2022/06/26.
//

import UIKit


//[✅] 탭이 눌릴때마다, 그에 맞는 네비게이션 바를 구성하고 싶어요...
// - [✅] 탭이 눌리는 것을 감지 해야겠다
// - [✅] 감지후에, 그 탭에 맞게 네비게이션 바 구성을 업데이트 해줘야겠다.

// 앱이 시작할때, 네비게이션바 아이템 설정을 완료하고 싶다
// - 네비게이션 바를

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateNavigationItem(vc: self.selectedViewController!)
    }
    
    private func updateNavigationItem(vc: UIViewController) {
        switch vc {
        case is HomeViewController:
            let titleConfig = CustomBarItemConfiguration(
                title: "정자동",
                handler: { }
            )
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let searchConfig = CustomBarItemConfiguration(
                image: UIImage(systemName: "magnifyingglass"),
                handler: { print("--> search tapped") }
            )
            let searchItem = UIBarButtonItem.generate(with: searchConfig, width: 30)
            
            let feedConfig = CustomBarItemConfiguration(
                image: UIImage(systemName: "bell"),
                handler: { print("--> feed tapped") }
            )
            let feedItem = UIBarButtonItem.generate(with: feedConfig, width: 30)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [feedItem, searchItem]
            navigationItem.backButtonDisplayMode = .minimal
            
        case is MyTownViewController:
            let titleConfig = CustomBarItemConfiguration(
                title: "정자동",
                handler: { }
            )
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let feedConfig = CustomBarItemConfiguration(
                image: UIImage(systemName: "bell"),
                handler: { print("--> feed tapped") }
            )
            let feedItem = UIBarButtonItem.generate(with: feedConfig, width: 30)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [feedItem]
            navigationItem.backButtonDisplayMode = .minimal

        case is ChatViewController:
            let titleConfig = CustomBarItemConfiguration(
                title: "채팅",
                handler: { }
            )
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let feedConfig = CustomBarItemConfiguration(
                image: UIImage(systemName: "bell"),
                handler: { print("--> feed tapped") }
            )
            let feedItem = UIBarButtonItem.generate(with: feedConfig, width: 30)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [feedItem]
            navigationItem.backButtonDisplayMode = .minimal
        case is MyProfileViewController:
            let titleConfig = CustomBarItemConfiguration(
                title: "나의 당근",
                handler: { }
            )
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let settingConfig = CustomBarItemConfiguration(
                image: UIImage(systemName: "gearshape"),
                handler: { print("--> setting tapped") }
            )
            let settingItem = UIBarButtonItem.generate(with: settingConfig, width: 30)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [settingItem]
            navigationItem.backButtonDisplayMode = .minimal

        default:
            let titleConfig = CustomBarItemConfiguration(
                title: "정자동",
                handler: { }
            )
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = []
            navigationItem.backButtonDisplayMode = .minimal
        }
    }
}


// [✅] 각 탭에 맞게 네비게이션바 아이템 구성하기
// - ✅ 홈: 타이틀, 피드, 서치
// - ✅ 동네활동: 타이틀, 피드
// - ✅ 내 근처: 타이틀
// - ✅ 채팅 : 타이틀, 피드
// - ✅ 나의 당근: 타이틀, 설정

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        updateNavigationItem(vc: viewController)
    }
}
