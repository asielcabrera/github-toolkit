//
//  Contributor.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Contributor: Codable, Sendable, Hashable, Identifiable {
  public var id: Int { user.id }
  public let user: User
  public let contributionCount: Int
  
  public init(
    user: User,
    contributionCount: Int
  ) {
    self.user = user
    self.contributionCount = contributionCount
  }
  
  private enum CodingKeys: String, CodingKey {
    case contributionCount = "contributions"
  }
  
  public init(from decoder: any Decoder) throws {
    self.user = try .init(from: decoder)
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.contributionCount = try container.decode(Int.self, forKey: .contributionCount)
  }
  
  public func encode(to encoder: any Encoder) throws {
    try self.user.encode(to: encoder)
    
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(contributionCount, forKey: .contributionCount)
  }
}
