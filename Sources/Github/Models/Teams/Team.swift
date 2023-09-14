//
//  Team.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Team: Hashable, Sendable, Identifiable, Codable {
  public let id: Int
  public let nodeID: String
  public let name: String
  public let slug: String
  public let description: String?
  public let privacy: Privacy
  public let notificationSetting: NotificationSettings
  public let permission: PermissionType
  public let url: URL
  public let htmlURL: URL
  public let membersURL: URL
  public let repositoriesURL: URL
  public let parent: ParentTeam?
  
  public init(
    id: Int,
    nodeID: String,
    name: String,
    slug: String,
    description: String?,
    privacy: Privacy,
    notificationSetting: NotificationSettings,
    permission: PermissionType,
    url: URL,
    htmlURL: URL,
    membersURL: URL,
    repositoriesURL: URL,
    parent: ParentTeam?
  ) {
    self.id = id
    self.nodeID = nodeID
    self.name = name
    self.slug = slug
    self.description = description
    self.privacy = privacy
    self.notificationSetting = notificationSetting
    self.permission = permission
    self.url = url
    self.htmlURL = htmlURL
    self.membersURL = membersURL
    self.repositoriesURL = repositoriesURL
    self.parent = parent
  }
  
  private enum CodingKeys: String, CodingKey {
    case id
    case nodeID = "node_id"
    case name
    case slug
    case description
    case privacy
    case notificationSetting = "notification_setting"
    case permission
    case url
    case htmlURL = "html_url"
    case membersURL = "members_url"
    case repositoriesURL = "repositories_url"
    case parent
  }
}
