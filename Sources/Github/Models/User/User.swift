//
//  User.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct User: Codable, Hashable, Sendable, Identifiable {
  public let id: Int
  public let userID: String
  public let userName: String?
  public let nodeID: String
  public let avatarURL: URL
  public let gravatarID: String
  public let url: URL
  public let htmlURL: URL
  public let followersURL: URL
  public let followingURL: URL
  public let subscriptionsURL: URL
  public let organizationsURL: URL
  public let reposURL: URL
  public let eventsURL: URL
  public let receivedEventsURL: URL
  public let gistsURL: URL
  public let starredURL: URL
  public let publicRepoCount: Int?
  public let totalPrivateRepoCount: Int?
  public let ownedPrivateRepoCount: Int?
  public let publicGistsCount: Int?
  public let privateGistsCount: Int?
  public let followerCount: Int?
  public let followingCount: Int?
  public let createdAt: Date?
  public let updatedAt: Date?
  public let bio: String?
  public let email: String?
  public let location: String?
  public let hireable: Bool?
  public let type: UserType
  public let score: Int?
  public let siteAdmin: Bool
  public let twitterUserName: String?
  public let company: String?
  public let diskUsage: Int?
  public let collaboratorCount: Int?
  public let twoFactorAuthentication: Bool?
  public let plan: Plan?
  
  public init(
    id: Int,
    userID: String,
    userName: String?,
    nodeID: String,
    avatarURL: URL,
    gravatarID: String,
    url: URL,
    htmlURL: URL,
    followersURL: URL,
    followingURL: URL,
    subscriptionsURL: URL,
    organizationsURL: URL,
    reposURL: URL,
    eventsURL: URL,
    receivedEventsURL: URL,
    gistsURL: URL,
    starredURL: URL,
    publicRepoCount: Int?,
    totalPrivateRepoCount: Int?,
    ownedPrivateRepoCount: Int?,
    publicGistsCount: Int?,
    privateGistsCount: Int?,
    followerCount: Int?,
    followingCount: Int?,
    createdAt: Date?,
    updatedAt: Date?,
    bio: String?,
    email: String?,
    location: String?,
    hireable: Bool?,
    type: UserType,
    score: Int?,
    siteAdmin: Bool,
    twitterUserName: String?,
    company: String?,
    diskUsage: Int?,
    collaboratorCount: Int?,
    twoFactorAuthentication: Bool?,
    plan: Plan?
  ) {
    self.id = id
    self.userID = userID
    self.userName = userName
    self.nodeID = nodeID
    self.avatarURL = avatarURL
    self.gravatarID = gravatarID
    self.url = url
    self.htmlURL = htmlURL
    self.followersURL = followersURL
    self.followingURL = followingURL
    self.subscriptionsURL = subscriptionsURL
    self.organizationsURL = organizationsURL
    self.reposURL = reposURL
    self.eventsURL = eventsURL
    self.receivedEventsURL = receivedEventsURL
    self.gistsURL = gistsURL
    self.starredURL = starredURL
    self.publicRepoCount = publicRepoCount
    self.totalPrivateRepoCount = totalPrivateRepoCount
    self.ownedPrivateRepoCount = ownedPrivateRepoCount
    self.publicGistsCount = publicGistsCount
    self.privateGistsCount = privateGistsCount
    self.followerCount = followerCount
    self.followingCount = followingCount
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.bio = bio
    self.email = email
    self.location = location
    self.hireable = hireable
    self.type = type
    self.score = score
    self.siteAdmin = siteAdmin
    self.twitterUserName = twitterUserName
    self.company = company
    self.diskUsage = diskUsage
    self.collaboratorCount = collaboratorCount
    self.twoFactorAuthentication = twoFactorAuthentication
    self.plan = plan
  }
  
  private enum CodingKeys: String, CodingKey {
    case id
    case userID = "login"
    case userName = "name"
    case nodeID = "node_id"
    case avatarURL = "avatar_url"
    case gravatarID = "gravatar_id"
    case url
    case htmlURL = "html_url"
    case followersURL = "followers_url"
    case followingURL = "following_url"
    case gistsURL = "gists_url"
    case starredURL = "starred_url"
    case subscriptionsURL = "subscriptions_url"
    case organizationsURL = "organizations_url"
    case reposURL = "repos_url"
    case eventsURL = "events_url"
    case receivedEventsURL = "received_events_url"
    case type
    case siteAdmin = "site_admin"
    case score
    case publicRepoCount = "public_repos"
    case totalPrivateRepoCount = "total_private_repos"
    case ownedPrivateRepoCount = "owned_private_repos"
    case publicGistsCount = "public_gists"
    case privateGistsCount = "private_gists"
    case followerCount = "followers"
    case followingCount = "following"
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case bio
    case email
    case location
    case hireable
    case twitterUserName = "twitter_username"
    case company
    case diskUsage = "disk_usage"
    case collaboratorCount = "collaborators"
    case twoFactorAuthentication = "two_factor_authentication"
    case plan
  }
}
