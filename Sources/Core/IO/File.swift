//
//  File.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/18/23.
//

import Foundation
import Foundation

public extension Core {
    struct File {
        public static func create(atPath path: String, contents: Data?, attributes: [FileAttributeKey: Any]? = nil) throws {
            FileManager.default.createFile(atPath: path, contents: contents, attributes: attributes)
        }
        
        public static func read(atPath path: String) throws -> Data {
            return try Data(contentsOf: URL(fileURLWithPath: path))
        }
        
        public static func write(data: Data, toPath path: String, options: Data.WritingOptions = []) throws {
            try data.write(to: URL(fileURLWithPath: path), options: options)
        }
        
        public static func delete(atPath path: String) throws {
            try FileManager.default.removeItem(atPath: path)
        }
    }
}
