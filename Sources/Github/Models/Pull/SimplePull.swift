//
//  SimplePull.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct SimplePull: Codable, Hashable, Sendable {
  public let url: URL
  public let htmlURL: URL
  public let diffURL: URL
  public let patchURL: URL
  public let mergedAt: Date?
  
  public init(
    url: URL,
    htmlURL: URL,
    diffURL: URL,
    patchURL: URL,
    mergedAt: Date?
  ) {
    self.url = url
    self.htmlURL = htmlURL
    self.diffURL = diffURL
    self.patchURL = patchURL
    self.mergedAt = mergedAt
  }
  
  private enum CodingKeys: String, CodingKey {
    case url
    case htmlURL = "html_url"
    case diffURL = "diff_url"
    case patchURL = "patch_url"
    case mergedAt = "merged_at"
  }
}
