//
//  Reaction.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Reaction: Codable, Sendable, Hashable {
  public let url: URL
  public let totalCount: Int
  public let plusOne: Int
  public let minusOne: Int
  public let laughCount: Int
  public let hoorayCount: Int
  public let confusedCount: Int
  public let heartCount: Int
  public let rockerCount: Int
  public let eyesCount: Int

  public init(
    url: URL,
    totalCount: Int,
    plusOne: Int,
    minusOne: Int,
    laughCount: Int,
    hoorayCount: Int,
    confusedCount: Int,
    heartCount: Int,
    rockerCount: Int,
    eyesCount: Int
  ) {
    self.url = url
    self.totalCount = totalCount
    self.plusOne = plusOne
    self.minusOne = minusOne
    self.laughCount = laughCount
    self.hoorayCount = hoorayCount
    self.confusedCount = confusedCount
    self.heartCount = heartCount
    self.rockerCount = rockerCount
    self.eyesCount = eyesCount
  }
  
  private enum CodingKeys: String, CodingKey {
    case url
    case totalCount = "total_count"
    case plusOne = "+1"
    case minusOne = "-1"
    case laughCount = "laugh"
    case hoorayCount = "hooray"
    case confusedCount = "confused"
    case heartCount = "heart"
    case rockerCount = "rocket"
    case eyesCount = "eyes"
  }
}
