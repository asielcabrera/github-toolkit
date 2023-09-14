//
//  DiscussionReaction.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension Discussion {
  public struct Reaction: Codable, Sendable, Hashable {
    public let content: String
    public let createdAt: Date
    public let databaseId: Int
    public let user: User
    
    public init(
      content: String,
      createdAt: Date,
      databaseId: Int,
      user: User
    ) {
      self.content = content
      self.createdAt = createdAt
      self.databaseId = databaseId
      self.user = user
    }
  }
}
