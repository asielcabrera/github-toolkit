//
//  DiscussionStateReason.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension Discussion {
  public enum StateReason: String, Sendable, Codable {
    case duplicate = "DUPLICATE"
    case outdated = "OUTDATED"
    case reOpened = "REOPENED"
    case resolved = "RESOLVED"
  }
}
