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
    
    private lazy var mockVC: UIViewController = {
        let navigationController = UINavigationController()
        let mockViewController = MockViewController()
        navigationController.viewControllers = [mockViewController]
        navigationController.tabBarItem.title = "Mock"
        navigationController.tabBarItem.image = UIImage(systemName: "questionmark")!
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
            mockVC,
        ]
    }
}

// TODO: When completed that project delete this
class MockViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
}
