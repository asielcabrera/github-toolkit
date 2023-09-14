//
//  SquashMergeCommit.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum SquashMergeCommitMessage: String, Codable, Sendable {
  case prBody = "PR_BODY"
  case commitMessages = "COMMIT_MESSAGES"
  case blank = "BLANK"
}

public enum SquashMergeCommitTitle: String, Codable, Sendable {
  case prTitle = "PR_TITLE"
  case commitOrPrTitle = "COMMIT_OR_PR_TITLE"
}
