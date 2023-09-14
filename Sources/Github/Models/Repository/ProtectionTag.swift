//
//  ProtectionTag.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct ProtectionTag: Codable, Sendable, Hashable, Identifiable {
  public let id: Int
  public let createdAt: Date?
  public let updatedAt: Date?
  public let enabled: Bool?
  public let pattern: String
  
  public init(
    id: Int,
    createdAt: Date?,
    updatedAt: Date?,
    enabled: Bool?,
    pattern: String
  ) {
    self.id = id
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.enabled = enabled
    self.pattern = pattern
  }
  
  private enum CodingKeys: String, CodingKey {
    case id
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case enabled
    case pattern
  }
}
