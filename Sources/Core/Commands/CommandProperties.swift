//
//  CommandProperties.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

// For internal use, subject to change.
// We use Any as a valid input type

public struct CommandProperties {
    var properties: [String: Any]
    
    public init(_ properties: [String: Any]) {
        self.properties = properties
    }
}
