//
//  CommandProtocol.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/18/23.
//

import Foundation

public protocol Command {
    associatedtype Value
    
    static func execute(with name: String, value: String?)
}
