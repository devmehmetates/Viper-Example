//
//  MockHomeView.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 6.09.2022.
//

import Foundation

final class MockHomeView: HomeViewInterface {

    var invokedSetupView = false
    var invokedSetupViewCount = 0

    func setupView() {
        invokedSetupView = true
        invokedSetupViewCount += 1
    }

    var invokedSetTitle = false
    var invokedSetTitleCount = 0
    var invokedSetTitleParameters: (title: String, Void)?
    var invokedSetTitleParametersList = [(title: String, Void)]()

    func setTitle(with title: String) {
        invokedSetTitle = true
        invokedSetTitleCount += 1
        invokedSetTitleParameters = (title, ())
        invokedSetTitleParametersList.append((title, ()))
    }
}
