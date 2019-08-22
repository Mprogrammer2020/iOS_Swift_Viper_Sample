//
//  FruitListInteractor.swift
//  ViperDemo
//
//  Created by Surender on 21/08/19.
//  Copyright © 2019 Surender. All rights reserved.
//

import UIKit

class FruitListInteractor: FruitListInputInteractorProtocol {
    
    weak var presenter: FruitListOutputInteractorProtocol?
    
    func getFruitList() {
        presenter?.fruitListDidFetch(fruitList: getAllFruitDetail())
    }
    
    func getAllFruitDetail() -> [Fruit] {
        var fruitList = [Fruit]()
        let allFruitDetail = Common.generateDataList()
        for item in allFruitDetail {
            fruitList.append(Fruit(attributes: item))
        }
        return fruitList
    }
}
