//
//  InputOptions.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/18/23.
//

import Foundation

public struct InputOptions {
    public let required: Bool
    public let defaultValue: String?
    
    public init(required: Bool = false, defaultValue: String? = nil) {
        self.required = required
        self.defaultValue = defaultValue
    }
}
