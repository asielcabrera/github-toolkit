//
//  InputCommand.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/20/23.
//

import Foundation

public protocol InputCommand: Command {
    func getInput(name: String, options: InputOptions) -> String?
    func getBooleanInput(name: String, options: InputOptions ) -> Bool?
}
