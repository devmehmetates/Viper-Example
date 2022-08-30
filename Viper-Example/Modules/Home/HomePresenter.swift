//
//  HomePresenter.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//

import Foundation

protocol HomePresenterInterface: AnyObject {
    func notifyViewDidLoad()
    var getItemCount: Int { get }
    var getSectionCount: Int { get }
}

final class HomePresenter {
    
    private weak var view: HomeViewInterface?
    private weak var router: HomeRouterInterface?
    private weak var interactor: HomeInteractorInterface?
    
    init(view: HomeViewInterface?, router: HomeRouterInterface?, interactor: HomeInteractorInterface?) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

// MARK: - Interface Setup
extension HomePresenter: HomePresenterInterface {
    
    var getItemCount: Int {
        10
    }
    
    var getSectionCount: Int {
        1
    }
    
    func notifyViewDidLoad() {
        view?.setupView()
        view?.setTitle(with: "Home")
    }
}

