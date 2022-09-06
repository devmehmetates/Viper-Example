//
//  HomeInteractor.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//


protocol HomeInteractorInterface: AnyObject {
    var datas: [BaseModel]? { get }
}

final class HomeInteractor: HomeInteractorInterface {
    
    var datas: [BaseModel]? {
        LocalService.shared.saveDummyData() // dummy datas saving here
        return LocalService.shared.readData()
    }
}
