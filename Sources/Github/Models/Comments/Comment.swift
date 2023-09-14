//
//  Comment.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Comment: Codable, Sendable, Hashable, Identifiable {
    public let id: Int
    public let nodeID: String
    public let url: URL
    public let body: String
    public let bodyText: String?
    public let bodyHTML: String?
    public let htmlURL: URL
    public let user: User
    public let createdAt: Date
    public let updatedAt: Date
    public let issueURL: URL
    public let authorAssociation: AuthorAssociation
    public let reactions: Reaction
    public let performGitHubApp: PerformGitHubApp?
    
    public init(
        id: Int,
        nodeID: String,
        url: URL,
        body: String,
        bodyText: String?,
        bodyHTML: String?,
        htmlURL: URL,
        user: User,
        createdAt: Date,
        updatedAt: Date,
        issueURL: URL,
        authorAssociation: AuthorAssociation,
        reactions: Reaction,
        performGitHubApp: PerformGitHubApp?
    ) {
        self.id = id
        self.nodeID = nodeID
        self.url = url
        self.body = body
        self.bodyText = bodyText
        self.bodyHTML = bodyHTML
        self.htmlURL = htmlURL
        self.user = user
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.issueURL = issueURL
        self.authorAssociation = authorAssociation
        self.reactions = reactions
        self.performGitHubApp = performGitHubApp
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case url
        case body
        case bodyText = "body_text"
        case bodyHTML = "body_html"
        case htmlURL = "html_url"
        case user
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case issueURL =  "issue_url"
        case authorAssociation = "author_association"
        case reactions
        case performGitHubApp = "performed_via_github_app"
    }
}
