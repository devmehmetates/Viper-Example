//
//  HomeRouter.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//

import UIKit

protocol HomeRouterInterface: AnyObject { }

final class HomeRouter: HomeRouterInterface {
    
    static func createModule(using navigationController: UINavigationController) -> HomeViewController {
        let router = HomeRouter()
        guard let view = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "homeVC") as? HomeViewController else { return HomeViewController() }
        let interactor = HomeInteractor()
        let presenter = HomePresenter(view: view, router: router, interactor: interactor)
        
        view.presenter = presenter
        return view
    }
}
