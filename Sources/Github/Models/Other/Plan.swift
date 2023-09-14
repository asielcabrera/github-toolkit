//
//  Plan.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Plan: Codable, Sendable, Hashable {
  public let name: String
  public let space: Int
  public let collaboratorCount: Int
  public let privateRepoCount: Int
  
  public init(
    name: String,
    space: Int,
    collaboratorCount: Int,
    privateRepoCount: Int
  ) {
    self.name = name
    self.space = space
    self.collaboratorCount = collaboratorCount
    self.privateRepoCount = privateRepoCount
  }
  
  private enum CodingKeys: String, CodingKey {
    case name
    case space
    case collaboratorCount = "collaborators"
    case privateRepoCount = "private_repos"
  }
}
