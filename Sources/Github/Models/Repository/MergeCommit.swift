//
//  MergeCommit.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum MergeCommitMessage: String, Codable, Sendable {
  case prTitle = "PR_TITLE"
  case prBody = "PR_BODY"
  case blank = "BLANK"
}

public enum MergeCommitTitle: String, Codable, Sendable {
  case prTitle = "PR_TITLE"
  case mergeMessage = "MERGE_MESSAGE"
}
