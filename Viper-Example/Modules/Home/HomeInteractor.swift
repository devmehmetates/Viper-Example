//
//  HomeInteractor.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//

import Foundation

protocol HomeInteractorInterface: AnyObject {
    func getDatas(result: @escaping([Movie]) -> Void) -> Void
}

final class HomeInteractor: HomeInteractorInterface {
    
    func getDatas(result: @escaping ([Movie]) -> Void) {
        DispatchQueue.main.async {
            NetworkManager.shared.sendApiRequest(with: NetworkEndpoints.baseUrl.rawValue) { response in
                switch response {
                    
                case .success(let moviesData):
                   return result(moviesData)
                case .failure:
                    return result([])
                }
            }
        }
    }
}
