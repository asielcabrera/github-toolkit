//
//  Milestone.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Milestone: Codable, Sendable, Hashable, Identifiable {
  public let id: Int
  public let nodeID: String
  public let state: State
  public let number: Int
  public let title: String
  public let description: String?
  public let url: URL
  public let htmlURL: URL
  public let labelsURL: URL
  public let creator: User
  public let openIssueCount: Int
  public let closedIssueCount: Int
  public let createdAt: Date
  public let updatedAt: Date
  public let closedAt: Date?
  public let dueOn: Date?
  
  public init(
    id: Int,
    nodeID: String,
    state: State,
    number: Int,
    title: String,
    description: String?,
    url: URL,
    htmlURL: URL,
    labelsURL: URL,
    creator: User,
    openIssueCount: Int,
    closedIssueCount: Int,
    createdAt: Date,
    updatedAt: Date,
    closedAt: Date?,
    dueOn: Date?
  ) {
    self.id = id
    self.nodeID = nodeID
    self.state = state
    self.number = number
    self.title = title
    self.description = description
    self.url = url
    self.htmlURL = htmlURL
    self.labelsURL = labelsURL
    self.creator = creator
    self.openIssueCount = openIssueCount
    self.closedIssueCount = closedIssueCount
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.closedAt = closedAt
    self.dueOn = dueOn
  }
  
  private enum CodingKeys: String, CodingKey {
    case id
    case nodeID = "node_id"
    case state
    case number
    case title
    case description
    case url
    case htmlURL = "html_url"
    case labelsURL = "labels_url"
    case creator
    case openIssueCount = "open_issues"
    case closedIssueCount = "closed_issues"
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case closedAt = "closed_at"
    case dueOn = "due_on"
  }
}
