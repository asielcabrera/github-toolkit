//
//  Outputs.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/18/23.
//

import Foundation
import Terminal

extension Core {
    public struct Outputs: OutputCommand {
        public typealias Value = String
        public static func setOutput(name: String, value: String) {
            let terminal = Terminal(type: .bash)
            _ = try? terminal.execute("echo \"\(name)=\(value)\" >> $GITHUB_OUTPUT" )
        }
    }
}
