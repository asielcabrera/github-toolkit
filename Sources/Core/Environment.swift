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
        
    }
    
}
