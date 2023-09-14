//
//  Branch.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Branch: Codable, Sendable, Hashable {
  public let label: String?
  public let ref: String
  public let sha: String
  public let user: User?
  public let repository: Repository?
  
  public init(
    label: String?,
    ref: String,
    sha: String,
    user: User?,
    repository: Repository?
  ) {
    self.label = label
    self.ref = ref
    self.sha = sha
    self.user = user
    self.repository = repository
  }
  
  private enum CodingKeys: String, CodingKey {
    case label
    case ref
    case sha
    case user
    case repository = "repo"
  }
}
