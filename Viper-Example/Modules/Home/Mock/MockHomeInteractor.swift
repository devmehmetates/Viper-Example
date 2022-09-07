//
//  MockHomeInteractor.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 6.09.2022.
//

import Foundation

final class MockHomeInteractor: HomeInteractorInterface {

    var invokedDatasGetter = false
    var invokedDatasGetterCount = 0
    var stubbedDatas: [BaseModel]!

    var datas: [BaseModel]? {
        invokedDatasGetter = true
        invokedDatasGetterCount += 1
        return stubbedDatas
    }
}
