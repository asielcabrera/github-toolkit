//
//  DiscussionUser.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension Discussion {
  public struct User: Codable, Hashable, Sendable {
    public let login: String
    public let avatarUrl: URL
    public let resourcePath: String
    public let url: URL
    
    public init(
      login: String,
      avatarUrl: URL,
      resourcePath: String,
      url: URL
    ) {
      self.login = login
      self.avatarUrl = avatarUrl
      self.resourcePath = resourcePath
      self.url = url
    }
  }
}
