//
//  UsersResponse.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct UsersResponse: Codable, Sendable {
  public let totalCount: Int
  public let incompleteResults: Bool
  public let users: [User]
  
  private enum CodingKeys: String, CodingKey {
    case totalCount = "total_count"
    case incompleteResults = "incomplete_results"
    case users = "items"
  }
}
