//
//  DiscussionResponse.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

struct DiscussionResponse: Decodable, Sendable {
  let discussion: Discussion
  
  private enum CodingKeys: String, CodingKey {
    case data
    case repository
    case discussion
  }
  
  init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    let dataContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .data)
    let repositoryContainer = try dataContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .repository)
    let discussion = try repositoryContainer.decode(Discussion.self, forKey: .discussion)
    self.discussion = discussion
  }
}

struct DiscussionsResponse: Decodable, Sendable {
  let discussions: [Discussion]
  
  private enum CodingKeys: String, CodingKey {
    case data
    case repository
    case discussions
    case nodes
  }
  
  init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    let dataContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .data)
    let repositoryContainer = try dataContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .repository)
    let discussionsContainer = try repositoryContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .discussions)
    let discussions = try discussionsContainer.decode([Discussion].self, forKey: .nodes)
    self.discussions = discussions
  }
}
