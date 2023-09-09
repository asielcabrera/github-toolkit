//
//  setCommandEcho.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

public extension Core {
    /**
     Enables or disables the echoing of commands into stdout for the rest of the step.
     Echoing is disabled by default if ACTIONS_STEP_DEBUG is not set.
     
     */
    
    static func setCommandEcho(enabled: Bool) {
        Utils.issue("echo", enabled ? "on" : "off")
    }
}
