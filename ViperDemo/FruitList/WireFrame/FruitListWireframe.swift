//
//  FruitListWireframe.swift
//  ViperDemo
//
//  Created by Surender on 21/08/19.
//  Copyright © 2019 Surender. All rights reserved.
//

import UIKit

class FruitListWireframe: FruitListWireFrameProtocol {
   
    func pushToFruitDetail(with fruit: Fruit,from view: UIViewController) {
        let fruitDetailViewController = view.storyboard?.instantiateViewController(withIdentifier: "FruitDetailView") as! FruitDetailView
        FruitDetailWireFrame.createFruitDetailModule(with: fruitDetailViewController, and: fruit)
        view.navigationController?.pushViewController(fruitDetailViewController, animated: true)
    }
    
    class func createFruitListModule(fruitListRef: FruitListView) {
       let presenter: FruitListPresenterProtocol & FruitListOutputInteractorProtocol = FruitListPresenter()
        
        fruitListRef.presenter = presenter
        fruitListRef.presenter?.wireframe = FruitListWireframe()
        fruitListRef.presenter?.view = fruitListRef
        fruitListRef.presenter?.interactor = FruitListInteractor()
        fruitListRef.presenter?.interactor?.presenter = presenter
    }
    
}
