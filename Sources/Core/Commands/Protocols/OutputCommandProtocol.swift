//
//  OutputCommand.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/20/23.
//

import Foundation

public protocol OutputCommand: Command {
    static func setOutput(name: String, value: Value)
}
