//
//  setSecret.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

public extension Core {
    /**
     Registers a secret which will get masked from logs.
     
     - Parameter secret: The value of the secret.
     */
    static func setSecret(secret: String) {
        Utils.issueCommand("add-mask", .init([:]), secret)
    }
}

