//
//  getInput.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

import Foundation

public extension Core {
    /**
     Gets the value of an input.
     Unless `trimWhitespace` is set to `false` in `InputOptions`, the value is also trimmed.
     Returns an empty string if the value is not defined.
     
     - Parameters:
       - name: The name of the input to get.
       - options: Optional. See `InputOptions`.
     - Returns: A string representing the input value.
     - Throws: An error if the input is required and not supplied.
     */
    static func getInput(_ name: String, options: InputOptions? = nil) throws -> String {
        guard let value = Core.env.getINPUT(name) else {
                if options?.required == true {
                    throw NSError(
                        domain: "com.github.actions.input",
                        code: 1,
                        userInfo: [
                            NSLocalizedDescriptionKey: "Input required and not supplied: \(name)"
                        ]
                    )
                }
                return ""
            }

            if let trimWhitespace = options?.trimWhitespace, !trimWhitespace {
                return value
            }

            return value.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
