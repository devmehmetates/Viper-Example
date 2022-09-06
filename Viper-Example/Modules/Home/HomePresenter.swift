//
//  HomePresenter.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//

protocol HomePresenterInterface: AnyObject {
    func notifyViewDidLoad() -> Void
    func getDataByIndex(_ index: Int) -> BaseModel?
    func fetchDatas() -> Void
    var getItemCount: Int { get }
    var getSectionCount: Int { get }
}

final class HomePresenter {
    
    private weak var view: HomeViewInterface?
    private var router: HomeRouterInterface?
    private var interactor: HomeInteractorInterface?
    private var datas: [BaseModel]?
    
    init(view: HomeViewInterface?, router: HomeRouterInterface?, interactor: HomeInteractorInterface?) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

// MARK: - Interface Setup
extension HomePresenter: HomePresenterInterface {
    
    func notifyViewDidLoad() {
        view?.setupView()
        view?.setTitle(with: "Home")
        fetchDatas()
    }
    
    func getDataByIndex(_ index: Int) -> BaseModel? {
        datas?[index]
    }
    
    func fetchDatas() {
        datas = interactor?.datas
    }
    
    var getItemCount: Int {
        datas?.count ?? 0
    }
    
    var getSectionCount: Int {
        1
    }
}
