//
//  Git.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/19/23.
//

import Foundation

public extension Core {
    struct Git {
        
        public static func cloneRepository(url: String, destinationPath: String) throws {
            let result = try CommandTerminal.run("git", arguments: ["clone", url, destinationPath])
            if result.exitCode != 0 {
                throw Core.GitError.gitCloneFailed
            }
        }
        public static func getCurrentBranch() throws -> String {
            let result = try CommandTerminal.run("git", arguments: ["rev-parse", "--abbrev-ref", "HEAD"])
            if result.exitCode != 0 {
                throw Core.GitError.gitTerminalFailed
            }
            guard let output = result.output else {
                throw Core.GitError.gitTerminalFailed
            }
            return output.trimmingCharacters(in: .whitespacesAndNewlines)
        }
        public static func getCurrentCommit() throws -> String {
            let result = try CommandTerminal.run("git", arguments: ["rev-parse", "HEAD"])
            if result.exitCode != 0 {
                throw Core.GitError.gitTerminalFailed
            }
            guard let output = result.output else {
                throw Core.GitError.gitTerminalFailed
            }
            return output.trimmingCharacters(in: .whitespacesAndNewlines)
        }

    }
    
    enum GitError: Error {
        case gitCloneFailed
        case gitTerminalFailed
        // Agrega otros casos de error según tus necesidades
    }

}
