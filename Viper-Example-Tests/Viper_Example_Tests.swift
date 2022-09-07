//
//  Viper_Example_Tests.swift
//  Viper-Example-Tests
//
//  Created by Mehmet Ateş on 1.09.2022.
//

import XCTest
@testable import Viper_Example

class Viper_ExampleTests: XCTestCase {
    private var homeInteractor: MockHomeInteractor!
    private var homeRouter: MockHomeRouter!
    private var homeView: MockHomeView!
    private var homePresenter: HomePresenterInterface!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        homeInteractor = MockHomeInteractor()
        homeRouter = MockHomeRouter()
        homeView = MockHomeView()
        homePresenter = HomePresenter(view: homeView, router: homeRouter, interactor: homeInteractor)
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        homePresenter = nil
        homeInteractor = nil
        homeRouter = nil
        homeView = nil
    }
    
    func testNotifyViewDidLoad() {
        homePresenter.notifyViewDidLoad()
        XCTAssertTrue(homeView.invokedSetupView)
        XCTAssertTrue(homeView.invokedSetTitle)
    }
    
    func testGetDataByIndex() {
        XCTAssertNil(homePresenter.getDataByIndex(0))
        homeInteractor.stubbedDatas = BaseModel.exampleDummyModels
        homePresenter.fetchDatas()
        XCTAssertNotNil(homePresenter.getDataByIndex(0))
    }
    
    func testFetchDatas() {
        homePresenter.fetchDatas()
        XCTAssertTrue(homeInteractor.invokedDatasGetter)
    }
    
    func testGetItemCount() {
        XCTAssertEqual(homePresenter.getItemCount, 0)
        homeInteractor.stubbedDatas = BaseModel.exampleDummyModels
        homePresenter.fetchDatas()
        XCTAssertEqual(homePresenter.getItemCount, 4)
    }
    
    func testGetSectionCount() {
        XCTAssertEqual(homePresenter.getSectionCount, 1)
    }
}
