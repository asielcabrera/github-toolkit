//
//  License.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct License: Codable, Sendable, Hashable {
  public let name: String
  public let path: String
  public let sha: String
  public let size: Int
  public let url: URL
  public let htmlURL: URL
  public let gitURL: URL
  public let downloadURL: URL
  public let type: LicenseType
  public let content: String
  public let encoding: Encoding
  public let license: SimpleLicense
  
  public init(
    name: String,
    path: String,
    sha: String,
    size: Int,
    url: URL,
    htmlURL: URL,
    gitURL: URL,
    downloadURL: URL,
    type: LicenseType,
    content: String,
    encoding: Encoding,
    license: SimpleLicense
  ) {
    self.name = name
    self.path = path
    self.sha = sha
    self.size = size
    self.url = url
    self.htmlURL = htmlURL
    self.gitURL = gitURL
    self.downloadURL = downloadURL
    self.type = type
    self.content = content
    self.encoding = encoding
    self.license = license
  }
  
  private enum CodingKeys: String, CodingKey {
    case name
    case path
    case sha
    case size
    case url
    case htmlURL = "html_url"
    case gitURL = "git_url"
    case downloadURL = "download_url"
    case type
    case content
    case encoding
    case license
  }
}
