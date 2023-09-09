//
//  Logger.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

import Foundation

public extension Core {
    /**
     Sets the action status to failed.
     When the action exits it will be with an exit code of 1
     - Parameters:
     - message: add error issue message
     */
    static func setFailed(message: String) {
        setenv("GITHUB_ACTIONS", "true", 1)
        setenv("GITHUB_ACTION", "error", 1)
        Core.error(message)
    }
    
    /**
     Adds an error issue
     
     - Parameters:
     - message: error issue message. Errors will be converted to String via toString()
     - properties:  optional properties to add to the annotation.
     */
    static func error(_ message: String, properties:  [String: Any] = [:]) {
        Utils.issueCommand("error", .init(properties), message)
    }
    
    /**
     * Gets whether Actions Step Debug is on or not
     */
    
    static func isDebug() -> Bool {
        return ProcessInfo.processInfo.environment["RUNNER_DEBUG"] == "1"
    }
    
    /**
     Writes debug message to user log
     - Parameters:
     - message: debug message
     */
    static func debug(message: String) {
        Utils.issueCommand("debug",.init([:]), message)
    }
    
    /**
     Adds a warning issue
     - Parameters:
     - message: warning issue message. Errors will be converted to String via toString()
     - properties:  optional properties to add to the annotation.
     */
    static func warning( message: String, properties: AnnotationProperties) {
        Utils.issueCommand("warning", Utils.toCommandProperties(properties), message)
    }
    
    /**
     Adds a notice issue
     - Parameters:
     - message: notice issue message. Errors will be converted to String via toString()
     - properties:  optional properties to add to the annotation.
     */
    static func notice(message: String, properties: AnnotationProperties) {
        Utils.issueCommand("notice", Utils.toCommandProperties(properties), message)
    }
    
    /**
     Writes info to log with console.log.
     - Parameters:
     - message: info message
     */
    static func info(message: String) {
        let _ = try! CommandTerminal.run("echo", arguments: [message])
    }
    
    /**
     Begin an output group.
     
     Output until the next `groupEnd` will be foldable in this group
     
     - Parameters:
     
     - name:  The name of the output group
     */
    static func startGroup(name: String) {
        Utils.issue("group", name)
    }
    
    /**
     * End an output group.
     */
    static func endGroup() {
        Utils.issue("endgroup")
    }
    
    /**
     Wrap an asynchronous function call in a group.
     
     Returns the same type as the function itself.
     
     - Parameters:
     - name: The name of the group
     - fn: The function to wrap in the group
     */
    static func group<T>(name: String, fn: () async throws -> T) async throws -> T {
        Core.startGroup(name: name)
        defer { Core.endGroup() }
        
        return try await fn()
    }
    
    /**
     Saves state for current action, the state can only be retrieved by this action"s post job execution.
     - Parameters:
     - name: name of the state to store
     - value:    value to store. Non-String values will be converted to a String via JSON.Stringify
     */
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    static func saveState<T> (name: String, value: T) {
        if (Core.env.getGithubVar("STATE") != nil){
            Utils.issueFileCommand(command: "STATE", message: Utils.prepareKeyValueMessage(key: name, value: value))
        } else {
            Utils.issueCommand("save-state", .init(["name": name]), Utils.toCommandValue(value))
        }
    }
    
    /**
     Gets the value of an state set by this action"s main execution.
     - Parameters:
     - name : name of the state to get
     
     */
    static func getState(name: String) -> String {
        return Core.env.getState(name: name) ?? ""
    }
    
    //    static func getIDToken(aud: String?) async throws -> String {
    //        return await OidcClient.getIDToken(aud)
    //    }
}
