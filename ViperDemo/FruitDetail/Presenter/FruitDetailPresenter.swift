//
//  FruitDetailPresenter.swift
//  ViperDemo
//
//  Created by Surender on 21/08/19.
//  Copyright © 2019 Surender. All rights reserved.
//

import UIKit

class FruitDetailPresenter: FruitDetailPresenterProtocol {
    
    var view: FruitDetailViewProtocol?
    var wireframe: FruitDetailWireFrameProtocol?
    var fruit: Fruit?
    
    func viewDidLoad() {
        view?.showFruitDetail(with: fruit!)
    }
    
    func backButtonPressed(from view: UIViewController) {
        
    }
    
}
