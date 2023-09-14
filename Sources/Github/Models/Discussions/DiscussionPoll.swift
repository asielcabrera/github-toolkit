//
//  File.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension Discussion {
  public struct Poll: Codable, Sendable, Hashable {
    public let question: String
    public let totalVoteCount: Int
    public let viewerCanVote: Bool
    public let viewerHasVoted: Bool
    public let options: [Option]
    
    public init(
      question: String,
      totalVoteCount: Int,
      viewerCanVote: Bool,
      viewerHasVoted: Bool,
      options: [Option]
    ) {
      self.question = question
      self.totalVoteCount = totalVoteCount
      self.viewerCanVote = viewerCanVote
      self.viewerHasVoted = viewerHasVoted
      self.options = options
    }
    
    private enum NodeCodingKeys: String, CodingKey {
      case nodes
    }
    
    public init(from decoder: any Decoder) throws {
      let container = try decoder.container(keyedBy: CodingKeys.self)
      self.question = try container.decode(String.self, forKey: .question)
      self.totalVoteCount = try container.decode(Int.self, forKey: .totalVoteCount)
      self.viewerCanVote = try container.decode(Bool.self, forKey: .viewerCanVote)
      self.viewerHasVoted = try container.decode(Bool.self, forKey: .viewerHasVoted)
      let optionsContainer = try container.nestedContainer(keyedBy: NodeCodingKeys.self, forKey: .options)
      self.options = try optionsContainer.decode([Discussion.Poll.Option].self, forKey: .nodes)
    }
  }
}
