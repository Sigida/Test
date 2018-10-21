//
//  ViewController.swift
//  Test
//
//  Created by Admin on 21.10.2018.
//  Copyright © 2018 Iulia Sigida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let explictStruct = GenericStruct<Bool>()
    let implicitStruct = GenericStruct(property: "Bob")
    var listDelegate = AddNameClass()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SomeClass.introduce()
        
    let human = HumanClass(name:"Angel", delegate: listDelegate)
        human.updateList(name: "Iliya")
        human.updateList(name: "Legion")
        print(listDelegate.listName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

