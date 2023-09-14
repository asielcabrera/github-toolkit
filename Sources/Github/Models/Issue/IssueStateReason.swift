//
//  IssueStateReason.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension Issue {
  public enum StateReason: String, Codable, Sendable {
    case completed
    case reopened
    case notPlanned = "not_planned"
  }
}
