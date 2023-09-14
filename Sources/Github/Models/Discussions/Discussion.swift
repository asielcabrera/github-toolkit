//
//  Discussion.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Discussion: Codable, Hashable, Sendable, Identifiable {
  public let id: String
  public let number: Int
  public let url: URL
  public let author: User?
  public let createdAt: Date
  public let title: String
  public let updatedAt: Date
  public let upvoteCount: Int
  public let stateReason: StateReason?
  public let activeLockReason: ActiveLockReason?
  public let authorAssociation: AuthorAssociation
  public let body: String
  public let bodyHTML: String
  public let bodyText: String
  public let createdViaEmail: Bool
  public let databaseId: Int
  public let editor: User?
  public let includesCreatedEdit: Bool
  public let lastEditedAt: Date?
  public let locked: Bool
  public let viewerCanClose: Bool
  public let viewerCanDelete: Bool
  public let viewerCanReact: Bool
  public let viewerCanReopen: Bool
  public let viewerCanSubscribe: Bool
  public let viewerCanUpdate: Bool
  public let viewerCanUpvote: Bool
  public let viewerDidAuthor: Bool
  public let viewerHasUpvoted: Bool
  public let viewerSubscription: SubscriptionState
  public let comments: [Comment]
  public let category: Category
  public let labels: [Label]
  public let reactions: [Reaction]
  public let poll: Poll?
  
  public init(
    id: String,
    number: Int,
    url: URL,
    author: User?,
    createdAt: Date,
    title: String,
    updatedAt: Date,
    upvoteCount: Int,
    stateReason: StateReason?,
    activeLockReason: ActiveLockReason?,
    authorAssociation: AuthorAssociation,
    body: String,
    bodyHTML: String,
    bodyText: String,
    createdViaEmail: Bool,
    databaseId: Int,
    editor: User?,
    includesCreatedEdit: Bool,
    lastEditedAt: Date?,
    locked: Bool,
    viewerCanClose: Bool,
    viewerCanDelete: Bool,
    viewerCanReact: Bool,
    viewerCanReopen: Bool,
    viewerCanSubscribe: Bool,
    viewerCanUpdate: Bool,
    viewerCanUpvote: Bool,
    viewerDidAuthor: Bool,
    viewerHasUpvoted: Bool,
    viewerSubscription: SubscriptionState,
    comments: [Comment],
    category: Category,
    labels: [Label],
    reactions: [Reaction],
    poll: Poll?
  ) {
    self.id = id
    self.number = number
    self.url = url
    self.author = author
    self.createdAt  = createdAt
    self.title = title
    self.updatedAt = updatedAt
    self.upvoteCount = upvoteCount
    self.stateReason = stateReason
    self.activeLockReason = activeLockReason
    self.authorAssociation = authorAssociation
    self.body = body
    self.bodyHTML = bodyHTML
    self.bodyText = bodyText
    self.createdViaEmail = createdViaEmail
    self.databaseId = databaseId
    self.editor = editor
    self.includesCreatedEdit = includesCreatedEdit
    self.lastEditedAt = lastEditedAt
    self.locked = locked
    self.viewerCanClose = viewerCanClose
    self.viewerCanDelete = viewerCanDelete
    self.viewerCanReact = viewerCanReact
    self.viewerCanReopen = viewerCanReopen
    self.viewerCanSubscribe = viewerCanSubscribe
    self.viewerCanUpdate = viewerCanUpdate
    self.viewerCanUpvote = viewerCanUpvote
    self.viewerDidAuthor = viewerDidAuthor
    self.viewerHasUpvoted = viewerHasUpvoted
    self.viewerSubscription = viewerSubscription
    self.comments = comments
    self.category = category
    self.labels = labels
    self.reactions = reactions
    self.poll = poll
  }
  
  private enum CodingKeys: String, CodingKey {
    case id
    case number
    case url
    case author
    case createdAt
    case title
    case updatedAt
    case upvoteCount
    case activeLockReason
    case authorAssociation
    case body
    case bodyHTML
    case bodyText
    case createdViaEmail
    case databaseId
    case editor
    case includesCreatedEdit
    case lastEditedAt
    case locked
    case viewerCanClose
    case viewerCanDelete
    case viewerCanReact
    case viewerCanReopen
    case viewerCanSubscribe
    case viewerCanUpdate
    case viewerCanUpvote
    case viewerDidAuthor
    case viewerHasUpvoted
    case viewerSubscription
    case comments
    case category
    case stateReason
    case labels
    case reactions
    case poll
  }
  
  private enum NodesCodingKeys: String, CodingKey {
    case nodes
  }
    
  public init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = try container.decode(String.self, forKey: .id)
    self.number = try container.decode(Int.self, forKey: .number)
    self.url = try container.decode(URL.self, forKey: .url)
    self.author = try container.decodeIfPresent(Discussion.User.self, forKey: .author)
    self.createdAt = try container.decode(Date.self, forKey: .createdAt)
    self.title = try container.decode(String.self, forKey: .title)
    self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
    self.upvoteCount = try container.decode(Int.self, forKey: .upvoteCount)
    self.stateReason = try container.decodeIfPresent(StateReason.self, forKey: .stateReason)
    self.activeLockReason = try container.decodeIfPresent(ActiveLockReason.self, forKey: .activeLockReason)
    self.authorAssociation = try container.decode(AuthorAssociation.self, forKey: .authorAssociation)
    self.body = try container.decode(String.self, forKey: .body)
    self.bodyHTML = try container.decode(String.self, forKey: .bodyHTML)
    self.bodyText = try container.decode(String.self, forKey: .bodyText)
    self.createdViaEmail = try container.decode(Bool.self, forKey: .createdViaEmail)
    self.databaseId = try container.decode(Int.self, forKey: .databaseId)
    self.editor = try container.decodeIfPresent(Discussion.User.self, forKey: .editor)
    self.includesCreatedEdit = try container.decode(Bool.self, forKey: .includesCreatedEdit)
    self.lastEditedAt = try container.decodeIfPresent(Date.self, forKey: .lastEditedAt)
    self.locked = try container.decode(Bool.self, forKey: .locked)
    self.viewerCanClose = try container.decode(Bool.self, forKey: .viewerCanClose)
    self.viewerCanDelete = try container.decode(Bool.self, forKey: .viewerCanDelete)
    self.viewerCanReact = try container.decode(Bool.self, forKey: .viewerCanReact)
    self.viewerCanReopen = try container.decode(Bool.self, forKey: .viewerCanReopen)
    self.viewerCanSubscribe = try container.decode(Bool.self, forKey: .viewerCanSubscribe)
    self.viewerCanUpdate = try container.decode(Bool.self, forKey: .viewerCanUpdate)
    self.viewerCanUpvote = try container.decode(Bool.self, forKey: .viewerCanUpvote)
    self.viewerDidAuthor = try container.decode(Bool.self, forKey: .viewerDidAuthor)
    self.viewerHasUpvoted = try container.decode(Bool.self, forKey: .viewerHasUpvoted)
    self.viewerSubscription = try container.decode(SubscriptionState.self, forKey: .viewerSubscription)
    let commentsContainer = try container.nestedContainer(keyedBy: NodesCodingKeys.self, forKey: .comments)
    self.comments = try commentsContainer.decode([Comment].self, forKey: .nodes)
    self.category = try container.decode(Category.self, forKey: .category)
    let labelsContainer = try container.nestedContainer(keyedBy: NodesCodingKeys.self, forKey: .labels)
    self.labels = try labelsContainer.decode([Label].self, forKey: .nodes)
    let reactionsContainer = try container.nestedContainer(keyedBy: NodesCodingKeys.self, forKey: .reactions)
    self.reactions = try reactionsContainer.decode([Reaction].self, forKey: .nodes)
    self.poll = try container.decodeIfPresent(Poll.self, forKey: .poll)
  }
}
