//
//  getBooleanInput.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

import Foundation

public extension Core {
    /**
     Gets the input value of the boolean type in the YAML 1.2 "core schema" specification.
     Supports boolean input list: `true | True | TRUE | false | False | FALSE`.
     The return value is also in boolean type.
     
     - Parameters:
     - name: The name of the input to get.
     - options: Optional. See `InputOptions`.
     - Returns: A boolean value representing the input value.
     - Throws: A `InputError` if the input does not meet the YAML 1.2 "Core Schema" specification.
     */
    
    static func getBooleanInput(_ name: String, options: InputOptions? = nil) throws -> Bool {
        let trueValues = ["true", "True", "TRUE"]
        let falseValues = ["false", "False", "FALSE"]
        let val = try! Core.getInput(name, options: options)
        
        guard trueValues.contains(val) || falseValues.contains(val) else {
            throw InputError.invalidBooleanInput(name)
        }
        
        return val.lowercased() == "true"
    }
    
}


enum InputError: Error {
    case invalidBooleanInput(_ name: String)
}
