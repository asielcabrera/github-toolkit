//
//  Directory.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/18/23.
//

import Foundation

public extension Core {
    struct Directory {
        public static func create(atPath path: String, withIntermediateDirectories createIntermediates: Bool = true, attributes: [FileAttributeKey: Any]? = nil) throws {
            try FileManager.default.createDirectory(atPath: path, withIntermediateDirectories: createIntermediates, attributes: attributes)
            print("Creando directorio: \(path)")
        }
        
        public static func delete(atPath path: String) throws {
            try FileManager.default.removeItem(atPath: path)
        }
        
        public static func contentsOfDirectory(atPath path: String) throws -> [String] {
            return try FileManager.default.contentsOfDirectory(atPath: path)
        }
        
        public static func moveItem(atPath srcPath: String, toPath dstPath: String) throws {
            try FileManager.default.moveItem(atPath: srcPath, toPath: dstPath)
        }
        
    }
}
