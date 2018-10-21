//
//  Normal.swift
//  Test
//
//  Created by Admin on 21.10.2018.
//  Copyright © 2018 Iulia Sigida. All rights reserved.
//

import Foundation

protocol NormalProtocol {
    var property: String { get set }
}

class NormalClass: NormalProtocol {
    var property: String = "Bob"
}

protocol GenericProtocol {
    associatedtype myType
    var anyProperty: myType { get set }
}

class SomeClass: GenericProtocol {
    var anyProperty = "Bob"
}

class NewClass: GenericProtocol {
    typealias myType = String
    var anyProperty: myType = "Bob"
}

struct SomeStruct: GenericProtocol {
    var anyProperty = 1996
}
extension GenericProtocol where myType == String {
    static func introduce() {
        print("I'm Bob")
    }
}

