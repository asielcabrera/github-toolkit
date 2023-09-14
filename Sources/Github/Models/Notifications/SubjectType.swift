//
//  SubjectType.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension Subject {
  public enum SubjectType: String, Codable, Sendable {
    case issue = "Issue"
    case release = "Release"
    case pullRequest = "PullRequest"
    case discussion = "Discussion"
  }
}
