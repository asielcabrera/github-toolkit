//
//  Tag.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Tag: Codable, Sendable, Hashable {
  public let name: String
  public let commit: Commit
  public let zipBallURL: URL
  public let tarBallURL: URL
  public let nodeID: String
  
  public init(
    name: String,
    commit: Commit,
    zipBallURL: URL,
    tarBallURL: URL,
    nodeID: String
  ) {
    self.name = name
    self.commit = commit
    self.zipBallURL = zipBallURL
    self.tarBallURL = tarBallURL
    self.nodeID = nodeID
  }
  
  private enum CodingKeys: String, CodingKey {
    case name
    case commit
    case zipBallURL = "zipball_url"
    case tarBallURL = "tarball_url"
    case nodeID = "node_id"
  }
}

extension Tag {
  public struct Commit: Codable, Sendable, Hashable {
    public let sha: String
    public let url: URL
    
    public init(
      sha: String,
      url: URL
    ) {
      self.sha = sha
      self.url = url
    }
  }
}
