//
//  Notification.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Notification: Codable, Sendable, Hashable, Identifiable {
  public let id: String
  public let repository: Repository
  public let subject: Subject
  public let reason: Reason
  public let unread: Bool
  public let updatedAt: Date
  public let lastReadAt: Date?
  public let url: URL
  public let subscriptionURL: URL
  
  public init(
    id: String,
    repository: Repository,
    subject: Subject,
    reason: Reason,
    unread: Bool,
    updatedAt: Date,
    lastReadAt: Date,
    url: URL,
    subscriptionURL: URL
  ) {
    self.id = id
    self.repository = repository
    self.subject = subject
    self.reason = reason
    self.unread = unread
    self.updatedAt = updatedAt
    self.lastReadAt = lastReadAt
    self.url = url
    self.subscriptionURL = subscriptionURL
  }
  
  private enum CodingKeys: String, CodingKey {
    case id
    case repository
    case subject
    case reason
    case unread
    case updatedAt = "updated_at"
    case lastReadAt = "last_read_at"
    case url
    case subscriptionURL = "subscription_url"
  }
}
