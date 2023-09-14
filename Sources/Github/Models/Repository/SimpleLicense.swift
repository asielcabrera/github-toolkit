//
//  SimpleLicense.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct SimpleLicense: Codable, Hashable, Sendable {
  public let key: String
  public let name: String
  public let spdxID: String
  public let url: URL?
  public let nodeID: String
  
  public init(
    key: String,
    name: String,
    spdxID: String,
    url: URL?,
    nodeID: String
  ) {
    self.key = key
    self.name = name
    self.spdxID = spdxID
    self.url = url
    self.nodeID = nodeID
  }
  
  private enum CodingKeys: String, CodingKey {
    case key
    case name
    case spdxID = "spdx_id"
    case url
    case nodeID = "node_id"
  }
}
