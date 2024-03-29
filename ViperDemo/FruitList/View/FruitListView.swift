//
//  FruitList.swift
//  ViperDemo
//
//  Created by Surender on 21/08/19.
//  Copyright © 2019 Surender. All rights reserved.
//

import UIKit

class FruitListView: UIViewController,FruitListViewProtocol {
    
    @IBOutlet var fruitTblView: UITableView!
    
    var presenter:FruitListPresenterProtocol?
    var fruitList = [Fruit]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fruitTblView.tableFooterView = UIView()
        FruitListWireframe.createFruitListModule(fruitListRef: self)
        presenter?.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showFruits(with fruits: [Fruit]) {
        fruitList = fruits
        fruitTblView.reloadData()
    }

}

extension FruitListView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = fruitTblView.dequeueReusableCell(withIdentifier: "fruitCell", for: indexPath)
        let fruit = fruitList[indexPath.row]
        cell.textLabel?.text = fruit.name
        cell.detailTextLabel?.text = fruit.vitamin
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showFruitSelection(with: fruitList[indexPath.row], from: self)
    }
    
}

