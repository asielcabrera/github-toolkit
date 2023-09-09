//
//  Environment.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/18/23.
//

import Foundation

public extension Core {
    struct Environment {
        public static func getRunnerVersion() -> String? {
            return ProcessInfo.processInfo.environment["RUNNER_VERSION"]
        }
        
        public static func getOS() -> String? {
            return ProcessInfo.processInfo.environment["RUNNER_OS"]
        }
        
        public static func getArchitecture() -> String? {
            return ProcessInfo.processInfo.environment["RUNNER_ARCHITECTURE"]
        }
        
        public static func isRunningInGitHubActions() -> Bool {
            return ProcessInfo.processInfo.environment["GITHUB_ACTIONS"] == "true"
        }
        
        public static func getWorkflow() -> String? {
            return ProcessInfo.processInfo.environment["GITHUB_WORKFLOW"]
        }
        
        public static func getRepository() -> String? {
            return ProcessInfo.processInfo.environment["GITHUB_REPOSITORY"]
        }
        
        public static func getEventName() -> String? {
            return ProcessInfo.processInfo.environment["GITHUB_EVENT_NAME"]
        }
        
        public static func getEventPath() -> String? {
            return ProcessInfo.processInfo.environment["GITHUB_EVENT_PATH"]
        }
        
        public static func getGithubEnv() -> String? {
            return ProcessInfo.processInfo.environment["GITHUB_ENV"]
        }
        public static func getGithubVar(_ name: String) -> String? {
            let environmentVariable = "GITHUB_\(name)"
            return ProcessInfo.processInfo.environment[environmentVariable]
        }
        
        public static func getPath() -> String? {
            return ProcessInfo.processInfo.environment["PATH"]
        }
        
        public static func getINPUT(_ name: String) -> String? {
            ProcessInfo.processInfo.environment["INPUT_\(name.replacingOccurrences(of: " ", with: "_").uppercased())"]
        }
        
        public static func getState(name: String) -> String? {
            return ProcessInfo.processInfo.environment["STATE_\(name)"]
        }
    }
    
}

public extension Core {
   typealias env = Environment
}
