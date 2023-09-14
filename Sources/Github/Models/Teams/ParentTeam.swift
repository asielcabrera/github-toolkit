//
//  ParentTeam.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct ParentTeam: Hashable, Sendable, Identifiable, Codable {
  public let id: Int
  public let nodeID: String
  public let membersURL: URL
  public let name: String
  public let description: String?
  public let permission: PermissionType
  public let privacy: Privacy
  public let notificationSetting: NotificationSettings
  public let htmlURL: URL
  public let repositoriesURL: URL
  public let slug: String
  public let ldapDn: String?
  
  public init(
    id: Int,
    nodeID: String,
    membersURL: URL,
    name: String,
    description: String?,
    permission: PermissionType,
    privacy: Privacy,
    notificationSetting: NotificationSettings,
    htmlURL: URL,
    repositoriesURL: URL,
    slug: String,
    ldapDn: String?
  ) {
    self.id = id
    self.nodeID = nodeID
    self.membersURL = membersURL
    self.name = name
    self.description = description
    self.permission = permission
    self.privacy = privacy
    self.notificationSetting = notificationSetting
    self.htmlURL = htmlURL
    self.repositoriesURL = repositoriesURL
    self.slug = slug
    self.ldapDn = ldapDn
  }
  
  enum CodingKeys: String, CodingKey {
    case id
    case nodeID = "node_id"
    case membersURL = "members_url"
    case name
    case description
    case permission
    case privacy
    case notificationSetting = "notification_setting"
    case htmlURL = "html_url"
    case repositoriesURL = "repositories_url"
    case slug
    case ldapDn = "ldap_dn"
  }
}
