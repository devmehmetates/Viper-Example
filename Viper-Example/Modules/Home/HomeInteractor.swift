//
//  HomeInteractor.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//

import Foundation

protocol HomeInteractorInterface: AnyObject {
    var datas: [BaseModel]? { get }
}

final class HomeInteractor: HomeInteractorInterface {
    
    var datas: [BaseModel]? {
        let _ = LocalService() // dummy datas saving here
        return LocalService.readData()
    }
}
