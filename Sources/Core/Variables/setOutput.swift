//
//  setOutput.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

import Foundation

public extension Core {
    /**
     Sets the value of an output.
     
     - Parameters:
       - name: The name of the output to set.
       - value: The value to store. Non-string values will be converted to a string via JSON.stringify.
     */
    static func setOutput(name: String, value: Any) {
        if (Core.env.getGithubVar("OUTPUT") != nil) {
            Utils.issueFileCommand(command: "OUTPUT", message: Utils.prepareKeyValueMessage(key: name, value: value))
        } else {
            Utils.issueCommand("set-output", .init(["name": name]), Utils.toCommandValue(value))
        }
    }
}
