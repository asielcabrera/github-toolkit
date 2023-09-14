//
//  Category.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Category: Codable, Hashable, Sendable {
  public let createdAt: Date
  public let description: String
  public let emoji: String
  public let emojiHTML: String
  public let isAnswerable: Bool
  public let name: String
  public let slug: String
  public let updateAt: Date?
  
  public init(
    createdAt: Date,
    description: String,
    emoji: String,
    emojiHTML: String,
    isAnswerable: Bool,
    name: String,
    slug: String,
    updateAt: Date?
  ) {
    self.createdAt = createdAt
    self.description = description
    self.emoji = emoji
    self.emojiHTML = emojiHTML
    self.isAnswerable = isAnswerable
    self.name = name
    self.slug = slug
    self.updateAt = updateAt
  }
}
