//
//  Codable++.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public extension JSONDecoder {
    static var github: JSONDecoder {
    let decoder = JSONDecoder()
    
    decoder.dateDecodingStrategy = .custom { decoder in
      let container = try decoder.singleValueContainer()
      let stringData = try container.decode(String.self)
      let formatter = ISO8601DateFormatter()
      
      if let date = formatter.date(from: stringData) {
        return date
      }
      
      formatter.formatOptions = .withFractionalSeconds
      return formatter.date(from: stringData)!
    }

    return decoder
  }
}

public extension JSONEncoder {
    static var github: JSONEncoder {
    let encoder = JSONEncoder()
    encoder.dateEncodingStrategy = .iso8601
    return encoder
  }
}
