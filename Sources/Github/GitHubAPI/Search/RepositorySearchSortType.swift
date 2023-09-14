//
//  RepositorySearchSortType.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum RepositorySearchSortType: String, Sendable {
  case stars
  case forks
  case helpWantedIssues = "help-wanted-issues"
  case updated
}
