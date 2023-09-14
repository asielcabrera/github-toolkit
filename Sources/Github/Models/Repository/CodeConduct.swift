//
//  CodeConduct.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct CodeConduct: Codable, Sendable, Hashable {
  public let key: String
  public let name: String
  public let url: URL
  public let body: String?
  public let htmlURL: URL
  
  public init(
    key: String,
    name: String,
    url: URL,
    body: String?,
    htmlURL: URL
  ) {
    self.key = key
    self.name = name
    self.url = url
    self.body = body
    self.htmlURL = htmlURL
  }
  
  private enum CodingKeys: String, CodingKey {
    case key
    case name
    case url
    case body
    case htmlURL = "html_url"
  }
}
