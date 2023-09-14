//
//  ActiveLockReason.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum ActiveLockReason: String, Codable, Sendable {
  case tooHeated = "too heated"
  case offTopic = "off-topic"
  case resolved
  case spam
  
  public init(from decoder: any Decoder) throws {
    let container = try decoder.singleValueContainer()
    let rawValue = try container.decode(String.self)
    self.init(rawValue: rawValue.lowercased())!
  }
}
