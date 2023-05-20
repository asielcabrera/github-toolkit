//
//  Inputs.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/18/23.
//

import Foundation

extension Core {
    public struct Inputs: InputCommand {
        public func getInput(name: String, options: InputOptions = .init()) -> String? {
            let inputKey = "INPUT_\(name.uppercased())"
            let defaultValue = options.defaultValue
            
            if let value = ProcessInfo.processInfo.environment[inputKey], !value.isEmpty {
                return value
            }
            
            if let value = defaultValue, !value.isEmpty {
                return value
            }
            
            if options.required {
                fatalError("Input '\(name)' is required but not provided.")
            }
            
            return nil
        }
        
        public func getBooleanInput(name: String, options: InputOptions = .init()) -> Bool? {
            guard let value = getInput(name: name, options: options) else {
                return false
            }
            
            return ["true", "1", "yes", "on"].contains(value.lowercased())
        }
        

        
        public typealias Value = String?
        
    }
}
