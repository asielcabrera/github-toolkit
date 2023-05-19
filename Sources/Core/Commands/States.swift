//
//  States.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/18/23.
//

import Foundation

extension Core {
    public struct States: Command {
        public typealias Value = Any?
        
        public static func execute(with name: String, value: String?) {
            // Implementación para obtener y establecer valores de estado persistentes
        }
    }
}
