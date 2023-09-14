//
//  Pull.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Pull: Hashable, Sendable, Identifiable, Codable {
  public let id: Int
  public let nodeID: String
  public let number: Int
  public let state: State
  public let locked: Bool
  public let title: String
  public let user: User
  public let body: String?
  public let createdAt: Date
  public let updateAt: Date
  public let closedAt: Date?
  public let url: URL
  public let htmlURL: URL
  public let diffURL: URL
  public let patchURL: URL
  public let issueURL: URL
  public let mergedAt: Date?
  public let mergeCommitSha: String?
  public let assignee: User?
  public let assignees: [User]
  public let requestedReviewers: [User]
  public let requestedTeams: [Team]
  public let labels: [Label]
  public let milestone: Milestone?
  public let isDraft: Bool
  public let commitsURL: URL
  public let reviewCommentsURL: URL
  public let reviewCommentURL: URL
  public let commentsURL: URL
  public let statusesURL: URL
  public let head: Branch
  public let base: Branch
  public let authorAssociation: AuthorAssociation
  public let autoMerge: AutoMerge?
  public let activeLockReason: ActiveLockReason?
  
  public init(
    id: Int,
    nodeID: String,
    number: Int,
    state: State,
    locked: Bool,
    title: String,
    user: User,
    body: String?,
    createdAt: Date,
    updateAt: Date,
    closedAt: Date,
    url: URL,
    htmlURL: URL,
    diffURL: URL,
    patchURL: URL,
    issueURL: URL,
    mergedAt: Date?,
    mergeCommitSha: String?,
    assignee: User?,
    assignees: [User],
    requestedReviewers: [User],
    requestedTeams: [Team],
    labels: [Label],
    milestone: Milestone?,
    isDraft: Bool,
    commitsURL: URL,
    reviewCommentsURL: URL,
    reviewCommentURL: URL,
    commentsURL: URL,
    statusesURL: URL,
    head: Branch,
    base: Branch,
    authorAssociation: AuthorAssociation,
    autoMerge: AutoMerge?,
    activeLockReason: ActiveLockReason?
  ) {
    self.id = id
    self.nodeID = nodeID
    self.number = number
    self.state = state
    self.locked = locked
    self.title = title
    self.user = user
    self.body = body
    self.createdAt = createdAt
    self.updateAt = updateAt
    self.closedAt = closedAt
    self.url = url
    self.htmlURL = htmlURL
    self.diffURL = diffURL
    self.patchURL = patchURL
    self.issueURL = issueURL
    self.mergedAt = mergedAt
    self.mergeCommitSha = mergeCommitSha
    self.assignee = assignee
    self.assignees = assignees
    self.requestedReviewers = requestedReviewers
    self.requestedTeams = requestedTeams
    self.labels = labels
    self.milestone = milestone
    self.isDraft = isDraft
    self.commitsURL = commitsURL
    self.reviewCommentsURL = reviewCommentsURL
    self.reviewCommentURL = reviewCommentURL
    self.commentsURL = commentsURL
    self.statusesURL = statusesURL
    self.head = head
    self.base = base
    self.authorAssociation = authorAssociation
    self.autoMerge = autoMerge
    self.activeLockReason = activeLockReason
  }
  
  private enum CodingKeys: String, CodingKey {
    case id
    case nodeID = "node_id"
    case number
    case state
    case locked
    case title
    case user
    case body
    case createdAt = "created_at"
    case updateAt = "updated_at"
    case closedAt = "closed_at"
    case url
    case htmlURL = "html_url"
    case diffURL = "diff_url"
    case patchURL = "patch_url"
    case issueURL = "issue_url"
    case mergedAt = "merged_at"
    case mergeCommitSha = "merge_commit_sha"
    case assignee
    case assignees
    case requestedReviewers = "requested_reviewers"
    case requestedTeams = "requested_teams"
    case labels
    case milestone
    case isDraft = "draft"
    case commitsURL = "commits_url"
    case reviewCommentsURL = "review_comments_url"
    case reviewCommentURL = "review_comment_url"
    case commentsURL = "comments_url"
    case statusesURL = "statuses_url"
    case head
    case base
    case authorAssociation = "author_association"
    case autoMerge = "auto_merge"
    case activeLockReason = "active_lock_reason"
  }
}
