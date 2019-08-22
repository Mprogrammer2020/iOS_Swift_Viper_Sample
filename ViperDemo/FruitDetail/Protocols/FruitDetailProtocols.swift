//
//  FruitDetailProtocols.swift
//  ViperDemo
//
//  Created by Surender on 21/08/19.
//  Copyright © 2019 Surender. All rights reserved.
//

import UIKit

protocol FruitDetailPresenterProtocol: class {
    
    var wireframe: FruitDetailWireFrameProtocol? {get set}
    var view: FruitDetailViewProtocol? {get set}
    
    //View -> Presenter
    func viewDidLoad()
    func backButtonPressed(from view: UIViewController)
    
}

protocol FruitDetailViewProtocol: class {
    //Presenter -> View
    func showFruitDetail(with fruit: Fruit)
}

protocol FruitDetailWireFrameProtocol: class {
    func goBackToFruitListView(from view: UIViewController)
}
