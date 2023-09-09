//
//  getMultilineInput.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

import Foundation

public extension Core {
    /**
     Gets the values of a multiline input. Each value is also trimmed.
     
     - Parameters:
       - name: The name of the multiline input to get.
       - options: Optional. See `InputOptions`.
     - Returns: An array of strings representing the multiline input values.
     */
    static func getMultilineInput(_ name: String, options: InputOptions? = nil) -> [String] {
        let inputs = try! Core.getInput(name, options: options).split(separator: "\n")
            .map { String($0) }
            .filter { !$0.isEmpty }

        if let trimWhitespace = options?.trimWhitespace, !trimWhitespace {
            return inputs
        }

        return inputs.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
    }

}
