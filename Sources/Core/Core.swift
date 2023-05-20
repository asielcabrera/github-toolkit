//
//  Core.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/18/23.
//

import Foundation
import Terminal

public struct Core {
    
    public static func setOutput(name: String, value: String) {
        
    }
    
    public static func setFailed(message: String) {
        print("::error::\(message)")
        exit(1)
    }
    
    public static func setSecret(name: String, value: String) {
        print("::add-mask::$\(value)")
        setOutput(name: name, value: value)
    }
    
    public static func debug(message: String) {
        print("::debug::\(message)")
    }
    
}
