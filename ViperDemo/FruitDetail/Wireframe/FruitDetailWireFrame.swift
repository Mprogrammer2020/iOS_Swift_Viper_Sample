//
//  FruitDetailWireFrame.swift
//  ViperDemo
//
//  Created by Surender on 21/08/19.
//  Copyright © 2019 Surender. All rights reserved.
//

import UIKit

class FruitDetailWireFrame: FruitDetailWireFrameProtocol {
    
    class func createFruitDetailModule(with fruitDetailRef: FruitDetailView, and fruit: Fruit) {
        let presenter = FruitDetailPresenter()
        presenter.fruit = fruit
        fruitDetailRef.presenter = presenter
        fruitDetailRef.presenter?.view = fruitDetailRef
        fruitDetailRef.presenter?.wireframe = FruitDetailWireFrame()
    }
    
    func goBackToFruitListView(from view: UIViewController) {
        
    }

}
