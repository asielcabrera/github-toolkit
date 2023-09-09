//
//  exportVariable.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//
import Foundation

public extension Core {
    /**
     Sets an environment variable for this action and future actions in the job.
     - Parameters:
       - name: The name of the variable to set.
       - val: The value of the variable. Non-string values will be converted to a string automatically.
     */
    func exportVariable<T>(_ name: String, _ val: T) {
        let convertedVal = Utils.toCommandValue(val)
        setenv(name, convertedVal, 1)

        if Core.env.getGithubEnv() != nil {
            Utils.issueFileCommand(command: "ENV", message: Utils.prepareKeyValueMessage(key: name, value: val))
        } else {
            Utils.issueCommand("set-env", .init(["name": name]), convertedVal)
        }
    }
}
