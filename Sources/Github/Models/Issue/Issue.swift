//
//  Issue.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Issue: Codable, Sendable, Identifiable, Hashable {
  public let id: Int
  public let number: Int
  public let title: String
  public let body: String?
  public let bodyHTML: String?
  public let bodyText: String?
  public let user: User
  public let nodeID: String
  public let url: URL
  public let repositoryURL: URL
  public let labelsURL: URL
  public let commentsURL: URL
  public let eventsURL: URL
  public let htmlURL: URL
  public let labels: [Label]
  public let state: State
  public let locked: Bool
  public let assignee: User?
  public let assignees: [User]
  public let milestone: Milestone?
  public let commentsCount: Int
  public let createdAt: Date
  public let updatedAt: Date
  public let closedAt: Date?
  public let authorAssociation: AuthorAssociation
  public let activeLockReason: ActiveLockReason?
  public let draft: Bool?
  public let pullRequest: SimplePull?
  public let reactions: Reaction?
  public let timelineURL: URL?
  public let performedViaGitHubApp: PerformGitHubApp?
  public let stateReason: StateReason?
  public let closedBy: User?
  public let repository: Repository?
  
  public init(
    id: Int,
    number: Int,
    title: String,
    body: String?,
    bodyHTML: String?,
    bodyText: String?,
    user: User,
    nodeID: String,
    url: URL,
    repositoryURL: URL,
    labelsURL: URL,
    commentsURL: URL,
    eventsURL: URL,
    htmlURL: URL,
    labels: [Label],
    state: State,
    locked: Bool,
    assignee: User?,
    assignees: [User],
    milestone: Milestone?,
    commentsCount: Int,
    createdAt: Date,
    updatedAt: Date,
    closedAt: Date?,
    authorAssociation: AuthorAssociation,
    activeLockReason: ActiveLockReason?,
    draft: Bool?,
    pullRequest: SimplePull?,
    reactions: Reaction?,
    timelineURL: URL?,
    performedViaGitHubApp: PerformGitHubApp?,
    stateReason: StateReason?,
    closedBy: User?,
    repository: Repository?
  ) {
    self.id = id
    self.number = number
    self.title = title
    self.body = body
    self.bodyHTML = bodyHTML
    self.bodyText = bodyText
    self.user = user
    self.nodeID = nodeID
    self.url = url
    self.repositoryURL = repositoryURL
    self.labelsURL = labelsURL
    self.commentsURL = commentsURL
    self.eventsURL = eventsURL
    self.htmlURL = htmlURL
    self.labels = labels
    self.state = state
    self.locked = locked
    self.assignee = assignee
    self.assignees = assignees
    self.milestone = milestone
    self.commentsCount = commentsCount
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.closedAt = closedAt
    self.authorAssociation = authorAssociation
    self.activeLockReason = activeLockReason
    self.draft = draft
    self.pullRequest = pullRequest
    self.reactions = reactions
    self.timelineURL = timelineURL
    self.performedViaGitHubApp = performedViaGitHubApp
    self.stateReason = stateReason
    self.closedBy = closedBy
    self.repository = repository
  }
  
  private enum CodingKeys: String, CodingKey {
    case id
    case number
    case title
    case body
    case bodyHTML = "body_html"
    case bodyText = "body_text"
    case user
    case nodeID = "node_id"
    case url
    case repositoryURL = "repository_url"
    case labelsURL = "labels_url"
    case commentsURL = "comments_url"
    case eventsURL = "events_url"
    case htmlURL = "html_url"
    case labels
    case state
    case locked
    case assignee
    case assignees
    case milestone
    case commentsCount = "comments"
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case closedAt = "closed_at"
    case authorAssociation = "author_association"
    case activeLockReason = "active_lock_reason"
    case draft
    case pullRequest = "pull_request"
    case reactions
    case timelineURL = "timeline_url"
    case performedViaGitHubApp = "performed_via_github_app"
    case stateReason = "state_reason"
    case closedBy = "closed_by"
    case repository
  }
}
