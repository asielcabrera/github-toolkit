//
//  DiscussionComment.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension Discussion {
  public struct Comment: Codable, Sendable, Hashable, Identifiable {
    public let id: String
    public let author: Discussion.User
    public let body: String
    public let bodyHTML: String
    public let bodyText: String
    public let createdAt: Date
    public let createdViaEmail: Bool
    public let editor: Discussion.User?
    public let authorAssociation: AuthorAssociation
    public let includesCreatedEdit: Bool
    public let lastEditedAt: Date?
    public let publishedAt: Date
    public let updatedAt:Date
    public let viewerDidAuthor: Bool
    
    public init(
      id: String,
      author: Discussion.User,
      body: String,
      bodyHTML: String,
      bodyText: String,
      createdAt: Date,
      createdViaEmail: Bool,
      editor: Discussion.User?,
      authorAssociation: AuthorAssociation,
      includesCreatedEdit: Bool,
      lastEditedAt: Date?,
      publishedAt: Date,
      updatedAt: Date,
      viewerDidAuthor: Bool
    ) {
      self.id = id
      self.author = author
      self.body = body
      self.bodyHTML = bodyHTML
      self.bodyText = bodyText
      self.createdAt = createdAt
      self.createdViaEmail = createdViaEmail
      self.editor = editor
      self.authorAssociation = authorAssociation
      self.includesCreatedEdit = includesCreatedEdit
      self.lastEditedAt = lastEditedAt
      self.publishedAt = publishedAt
      self.updatedAt = updatedAt
      self.viewerDidAuthor = viewerDidAuthor
    }
  }
}
