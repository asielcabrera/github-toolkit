//
//  DiscussionLabel.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension Discussion {
  public struct Label: Codable, Sendable, Hashable {
    public let name: String
    public let color: String
    public let createdAt: Date
    public let description: String
    public let isDefault: Bool
    public let resourcePath: String
    public let updatedAt: Date
    public let url: URL
    
    public init(
      name: String,
      color: String,
      createdAt: Date,
      description: String,
      isDefault: Bool,
      resourcePath: String,
      updatedAt: Date,
      url: URL
    ) {
      self.name = name
      self.color = color
      self.createdAt = createdAt
      self.description = description
      self.isDefault = isDefault
      self.resourcePath = resourcePath
      self.updatedAt = updatedAt
      self.url = url
    }
  }
}
