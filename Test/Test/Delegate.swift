//
//  Delegate.swift
//  Test
//
//  Created by Admin on 21.10.2018.
//  Copyright © 2018 Iulia Sigida. All rights reserved.
//

import Foundation

//MARK: - Protocol
protocol AddNameDelegate {
    var listName:[String] {get set}
    func addName(name:String)
}

protocol HumanProtocol {
    var name:String {get set}
    var delegate:AddNameDelegate? {get set}
    init(name:String, delegate: AddNameDelegate?)
}
//MARK: - Class
class AddNameClass:AddNameDelegate {
    var listName: [String] = []
    
    func addName(name: String) {
        listName.append(name)
    }
    
}

class HumanClass:HumanProtocol {
    var name: String
    
    var delegate: AddNameDelegate?
    
    required init(name: String, delegate: AddNameDelegate?) {
        self.name = name
        self.delegate = delegate
    }
    func updateList(name:String){
        delegate?.addName(name: name)
    }
}
