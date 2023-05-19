//
//  CommandName.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/18/23.
//

import Foundation

enum CommandName: String, CaseIterable {
  
       case SetEnv = "set-env"
       case AddMask = "add-mask"
       case AddPath = "add-path"
       case Echo = "echo"
       case Debug = "debug"
       case Error = "error"
       case Warning = "warning"
       case Notice = "notice"
       case Group = "group"
       case EndGroup = "endgroup"
       // Deprecated
       // https://github.blog/changelog/2022-10-11-github-actions-deprecating-save-state-and-set-output-commands
       case SaveState = "save-state"
       case SetOutput = "set-output"
    
    
    public func IsConventional(command: CommandName) -> Bool {
        Self.allCases.contains { $0 == command }
    }
}
