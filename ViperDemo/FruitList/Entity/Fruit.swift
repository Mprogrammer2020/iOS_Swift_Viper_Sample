//
//  Fruit.swift
//  ViperDemo
//
//  Created by Surender on 21/08/19.
//  Copyright © 2019 Surender. All rights reserved.
//

import UIKit

struct Fruit {
    var name: String!
    var vitamin: String!
    
    init(attributes: [String: String]) {
        self.name = attributes["name"]
        self.vitamin = attributes["vitamin"]
    }
}
