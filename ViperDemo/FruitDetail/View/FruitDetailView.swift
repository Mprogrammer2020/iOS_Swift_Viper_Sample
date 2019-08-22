//
//  FruitDetailView.swift
//  ViperDemo
//
//  Created by Surender on 21/08/19.
//  Copyright © 2019 Surender. All rights reserved.
//

import UIKit

class FruitDetailView: UIViewController,FruitDetailViewProtocol {

    @IBOutlet var fruitImage: UIImageView!
    @IBOutlet var fruitNameLbl: UILabel!
    @IBOutlet var vitaminLbl: UILabel!
    
    var presenter: FruitDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showFruitDetail(with fruit: Fruit) {
        title = fruit.name
        fruitImage.image = UIImage(named: fruit.name)
        fruitNameLbl.text = fruit.name
        vitaminLbl.text = fruit.vitamin
    }

}
