//
//  GitignoreTemplate.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct GitignoreTemplate: Codable, Sendable, Hashable {
  public let name: String
  public let source: String
  
  public init(
    name: String,
    source: String
  ) {
    self.name = name
    self.source = source
  }
}
