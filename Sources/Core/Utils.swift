//
//  Utils.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

import Foundation

public struct Utils {
    static func toCommandValue(_ val: Any) -> String {
        return String(describing: val)
    }
    
    static func issueCommand<T>(_ command: String, _ properties: CommandProperties, _ message: T) {
        let cmd = Command(command, properties, message)
        print("\(cmd)\n")
    }
    
    static func issue<T>(_ name: String, _ message: T = "") {
        issueCommand(name, CommandProperties([:]), message)
    }
    
    static func issueFileCommand<T>(command: String, message: T) {
        
        if let filePath = Core.env.getGithubVar(command) {
            if !FileManager.default.fileExists(atPath: filePath) {
                fatalError("Missing file at path: \(filePath)")
            }
            
            do {
                let messageString = "\(toCommandValue(message))\n"
                try messageString.write(toFile: filePath, atomically: true, encoding: .utf8)
            } catch {
                fatalError("Error writing to file: \(error)")
            }
        } else {
            fatalError("Unable to find environment variable for file command \(command)")
        }
    }
    
    static func prepareKeyValueMessage(key: String, value: Any) -> String {
        let delimiter = "ghadelimiter_\(UUID().uuidString)"
        let convertedValue = Utils.toCommandValue(value)
        
        if key.contains(delimiter) {
            fatalError("Unexpected input: name should not contain the delimiter \"\(delimiter)\"")
        }
        
        if convertedValue.contains(delimiter) {
            fatalError("Unexpected input: value should not contain the delimiter \"\(delimiter)\"")
        }
        
        return "\(key)<<\(delimiter)\n\(convertedValue)\n\(delimiter)"
    }
    
    /**
     Converts the annotation properties to command properties to send with the actual annotation command.
     See IssueCommandProperties: https://github.com/actions/runner/blob/main/src/Runner.Worker/ActionCommandManager.cs#L646
     
     - Parameter annotationProperties: The annotation properties.
     - Returns: The command properties.
     */
    static func toCommandProperties(_ annotationProperties: AnnotationProperties) -> CommandProperties {
        
        return CommandProperties([
            "title": annotationProperties.title ?? "",
            "file": annotationProperties.file ?? "",
            "line": annotationProperties.startLine ?? "",
            "endLine": annotationProperties.endLine ?? "",
            "col": annotationProperties.startColumn ?? "",
            "endColumn": annotationProperties.endColumn ?? ""
        ])
    }
    
    
    /**
     Converts the given path to posix form. On Windows, \\ will be replaced with /.
     
     - Parameter pth: The path to transform.
     - Returns: Posix path.
     */
    static func toPosixPath(_ pth: String) -> String {
        return pth.replacingOccurrences(of: "\\", with: "/")
    }
    
    /**
     Converts the given path to win32 form. On Linux, / will be replaced with \\.
     
     - Parameter pth: The path to transform.
     - Returns: Win32 path.
     */
    static func toWin32Path(_ pth: String) -> String {
        return pth.replacingOccurrences(of: "/", with: "\\")
    }
    
    /**
     Converts the given path to a platform-specific path. It does this by replacing
     instances of / and \ with the platform-specific path separator.
     
     - Parameter pth: The path to platformize.
     - Returns: The platform-specific path.
     */
    
    static func toPlatformPath(_ pth: String) -> String {
#if os(Windows)
        return Utils.toWin32Path(pth)
#else
        return Utils.toPosixPath(pth)
#endif
    }
    
}
