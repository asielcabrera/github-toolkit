//
//  Commands.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

import Foundation


/**
 Commands
 Command Format:
 ::name key=value,key=value::message
 Examples:
 ::warning::This is the message
 ::set-env name=MY_VAR::some value
 */


public struct Command<T>: CustomStringConvertible {
    private let CMD_STRING = "::"
    private let command: String
    private let message: T
    private let properties: CommandProperties
    
    init(_ command: String, _ properties: CommandProperties, _ message: T) {
        self.command = command.isEmpty ? "missing.command" : command
        self.properties = properties
        self.message = message
    }
    
    public var description: String {
        var cmdStr = CMD_STRING + command
        
        if !properties.properties.isEmpty {
            cmdStr += " "
            var first = true
            for (key, val) in properties.properties {
                if first {
                    first = false
                } else {
                    cmdStr += ","
                }
                cmdStr += "\(key)=\(escapeProperty(val as! T))"
            }
        }
        
        cmdStr += "\(CMD_STRING)\(escapeData(message))"
        return cmdStr
    }
    
    private func escapeData(_ value: T) -> String {
        return toCommandValue(value)
            .replacingOccurrences(of: "%", with: "%25")
            .replacingOccurrences(of: "\r", with: "%0D")
            .replacingOccurrences(of: "\n", with: "%0A")
    }
    
    private func escapeProperty(_ value: T) -> String {
        return toCommandValue(value)
            .replacingOccurrences(of: "%", with: "%25")
            .replacingOccurrences(of: "\r", with: "%0D")
            .replacingOccurrences(of: "\n", with: "%0A")
            .replacingOccurrences(of: ":", with: "%3A")
            .replacingOccurrences(of: ",", with: "%2C")
    }
    
    private func toCommandValue(_ value: T) -> String {
        return String(describing: value)
    }
}
