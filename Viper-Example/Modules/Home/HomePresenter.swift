//
//  HomePresenter.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//

import Foundation

protocol HomePresenterInterface: AnyObject { }

final class HomePresenter: HomePresenterInterface {
    
    private weak var view: HomeViewInterface?
    private weak var router: HomeRouterInterface?
    private weak var interactor: HomeInteractorInterface?
    
    init(view: HomeViewInterface?, router: HomeRouterInterface?, interactor: HomeInteractorInterface?) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

