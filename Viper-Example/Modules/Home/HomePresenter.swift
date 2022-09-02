//
//  HomePresenter.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//

import Foundation

protocol HomePresenterInterface: AnyObject {
    func notifyViewDidLoad()
    func getDataByIndex(_ index: Int) -> Movie?
    var getItemCount: Int { get }
    var getSectionCount: Int { get }
}

final class HomePresenter {
    
    private weak var view: HomeViewInterface?
    private var router: HomeRouterInterface?
    private var interactor: HomeInteractorInterface?
    private var datas: [Movie]? {
        didSet {
            view?.reloadCollectionView()
        }
    }
    
    init(view: HomeViewInterface?, router: HomeRouterInterface?, interactor: HomeInteractorInterface?) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

// MARK: - Interface Setup
extension HomePresenter: HomePresenterInterface {
    
    func getDataByIndex(_ index: Int) -> Movie? {
        datas?[index]
    }
    
    var getItemCount: Int {
        datas?.count ?? 0
    }
    
    var getSectionCount: Int {
        1
    }
    
    func notifyViewDidLoad() {
        view?.setupView()
        view?.setTitle(with: "Home")
        interactor?.getDatas(result: { [weak self] movies in
            self?.datas = movies
        })
    }
}

