//
//  FruitListPresenter.swift
//  ViperDemo
//
//  Created by Surender on 21/08/19.
//  Copyright © 2019 Surender. All rights reserved.
//

import UIKit

class FruitListPresenter: FruitListPresenterProtocol {
    
    var wireframe: FruitListWireFrameProtocol?
    var view: FruitListViewProtocol?
    var interactor: FruitListInputInteractorProtocol?
    var presenter: FruitListPresenterProtocol?
    
    func showFruitSelection(with fruit: Fruit, from view: UIViewController) {
        wireframe?.pushToFruitDetail(with: fruit, from: view)
    }
    
    func viewDidLoad() {
        self.loadFruitList()
    }

    func loadFruitList() {
        interactor?.getFruitList()
    }
    
}

extension FruitListPresenter: FruitListOutputInteractorProtocol {
    
    func fruitListDidFetch(fruitList: [Fruit]) {
        view?.showFruits(with: fruitList)
    }
    
}
