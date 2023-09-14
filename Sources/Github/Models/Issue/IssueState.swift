//
//  IssueState.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension Issue {
  public enum State: String, Codable, Sendable {
    case open
    case closed
  }
}
