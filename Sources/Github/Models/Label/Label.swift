//
//  Label.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Label: Codable, Hashable, Sendable, Identifiable {
  public let id: Int
  public let nodeID: String
  public let url: URL
  public let name: String
  public let color: String
  public let isDefault: Bool
  public let description: String?
  
  public init(
    id: Int,
    nodeID: String,
    url: URL,
    name: String,
    color: String,
    isDefault: Bool,
    description: String?
  ) {
    self.id = id
    self.nodeID = nodeID
    self.url = url
    self.name = name
    self.color = color
    self.isDefault = isDefault
    self.description = description
  }
  
  private enum CodingKeys: String, CodingKey {
    case id
    case nodeID = "node_id"
    case url
    case name
    case color
    case isDefault = "default"
    case description
  }
}
