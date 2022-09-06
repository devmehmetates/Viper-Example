//
//  BaseModel.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 30.08.2022.
//

struct BaseModel: Codable {
    var title: String
    var description: String
    
    static let exampleDummyModels = [
        BaseModel(title: "Dummy1", description: "Dummy1"),
        BaseModel(title: "Dummy2", description: "Dummy1"),
        BaseModel(title: "Dummy3", description: "Dummy1"),
        BaseModel(title: "Dummy4", description: "Dummy1")
    ]
}
