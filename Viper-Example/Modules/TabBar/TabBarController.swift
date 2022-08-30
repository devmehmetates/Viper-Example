//
//  TabBarController.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//

import UIKit

protocol TabBarViewInterface: AnyObject {
    func setupView()
}

class TabBarController: UITabBarController {
    
    private lazy var homeVC: UIViewController = {
        let navigationController = UINavigationController()
        let homeViewController = HomeRouter.createModule(using: navigationController)
        navigationController.viewControllers = [homeViewController]
        navigationController.tabBarItem.title = "Home"
        navigationController.tabBarItem.image = UIImage(systemName: "house.circle")!
        return navigationController
    }()
    
    var presenter: TabBarPresenterInterface? {
        didSet {
            presenter?.notifyViewLoaded()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Interface Setup
extension TabBarController: TabBarViewInterface {
    
    func setupView() {
        viewControllers = [
            homeVC
        ]
    }
}
