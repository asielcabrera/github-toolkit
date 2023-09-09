//
//  addPath.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//
import Foundation

public extension Core {
    /**
     Prepends `inputPath` to the PATH (for this action and future actions).
     
     - Parameter inputPath: The path to prepend to the PATH environment variable.
     */
    static func addPath(inputPath: String) {
        
        // Define the path delimiter based on the platform
        let pathDelimiter: String = {
#if os(Windows)
            return ";"
#else
            return ":"
#endif
        }()
        
        if Core.env.getGithubVar("PATH") != nil {
            Utils.issueFileCommand(command: "PATH", message: inputPath)
        } else {
            Utils.issueCommand("add-path", .init([:]), inputPath)
        }
        
        if let currentPath = Core.env.getPath() {
            let PATH = "\(inputPath)\(pathDelimiter)\(currentPath)"
            setenv("PATH", PATH, 1)
        } else {
            setenv("PATH", inputPath, 1)
        }
        
    }
}
