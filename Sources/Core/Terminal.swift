//
//  Terminal.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/19/23.
//

import Foundation


public struct CommandTerminal {
    public static func run(_ executable: String, arguments: [String]) throws -> CommandTerminalResult {
        let process = Process()
        process.executableURL = URL(fileURLWithPath: executable)
        process.arguments = arguments
        
        let outputPipe = Pipe()
        let errorPipe = Pipe()
        process.standardOutput = outputPipe
        process.standardError = errorPipe
        
        try process.run()
        process.waitUntilExit()
        
        let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
        let errorData = errorPipe.fileHandleForReading.readDataToEndOfFile()
        
        let outputString = String(data: outputData, encoding: .utf8)
        let errorString = String(data: errorData, encoding: .utf8)
        
        return CommandTerminalResult(output: outputString, error: errorString, exitCode: Int(process.terminationStatus))
    }
}

public struct CommandTerminalResult {
    public let output: String?
    public let error: String?
    public let exitCode: Int
}
